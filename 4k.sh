#!/usr/bin/env bash

set -e

# Usage create-vod-hls.sh SOURCE_FILE [OUTPUT_NAME]
[[ ! "${1}" ]] && echo "Usage: create-vod-hls.sh SOURCE_FILE [OUTPUT_NAME]" && exit 1

# Define renditions: resolution, bitrate, audio-rate
renditions=(
  "426x240 400k 64k"
  "640x360 800k 96k"
  "842x480 1200k 128k"
  "1280x720 2400k 196k"
  "1920x1080 4800k 360k"
  "2560x1440 8000k 360k"
  "4096x2160 16000k 360k"
)

segment_target_duration=2       # Segment duration in seconds
max_bitrate_ratio=1.07          # Maximum bitrate fluctuation ratio
rate_monitor_buffer_ratio=1.5   # Buffer size ratio for bitrate conformance checks

#########################################################################

source="${1}"
target="${2}"
if [[ ! "${target}" ]]; then
  target="${source##*/}" # Leave only the last component of the path
  target="${target%.*}"  # Strip extension
fi
mkdir -p "${target}"

# Calculate key frames interval
key_frames_interval=$(ffprobe "${source}" 2>&1 | grep -oP '(?<=\[Parsed_select_0\] [\d]+ fps)' | awk '{print int($1 * 2)}')
key_frames_interval=${key_frames_interval:-50}

# Static parameters that are similar for all renditions
static_params="-c:a aac -ar 48000 -c:v h264_nvenc -profile:v main -preset p1 -g ${key_frames_interval} -keyint_min ${key_frames_interval} -hls_time ${segment_target_duration} -hls_playlist_type vod"

# Misc params
misc_params="-hide_banner -y"

master_playlist="#EXTM3U\n#EXT-X-VERSION:3\n"
cmd=""
for rendition in "${renditions[@]}"; do
  # Drop extraneous spaces
  rendition="${rendition//[[:space:]]+/ }"

  # Rendition fields
  resolution="$(echo ${rendition} | cut -d ' ' -f 1)"
  bitrate="$(echo ${rendition} | cut -d ' ' -f 2)"
  audiorate="$(echo ${rendition} | cut -d ' ' -f 3)"

  # Calculated fields
  width="$(echo ${resolution} | cut -d 'x' -f 1)"
  height="$(echo ${resolution} | cut -d 'x' -f 2)"
  maxrate="$(echo "${bitrate%k} * ${max_bitrate_ratio}" | bc)"
  bufsize="$(echo "${bitrate%k} * ${rate_monitor_buffer_ratio}" | bc)"
  bandwidth="$(echo "${bitrate%k}000")"
  name="${height}p"

  cmd+=" ${static_params} -b:v ${bitrate} -maxrate ${maxrate%.*}k -bufsize ${bufsize%.*}k -b:a ${audiorate}"
  cmd+=" -vf scale=w=${width}:h=${height}:force_original_aspect_ratio=decrease"
  cmd+=" -hls_segment_filename ${target}/${name}_%03d.ts ${target}/${name}.m3u8"

  # Add rendition entry in the master playlist
  master_playlist+="#EXT-X-STREAM-INF:BANDWIDTH=${bandwidth},RESOLUTION=${resolution}\n${name}.m3u8\n"
done

# Start conversion
echo -e "Executing command:\nffmpeg ${misc_params} -i ${source} ${cmd}"
ffmpeg ${misc_params} -i "${source}" ${cmd}

# Create master playlist file
echo -e "${master_playlist}" > "${target}/playlist.m3u8"

echo "Done - encoded HLS is at ${target}/"
