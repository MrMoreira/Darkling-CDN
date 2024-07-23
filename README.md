**===== English =====**

# Darkling-CDN

**Darkling-CDN** is an innovative project with a mission to democratize digital content distribution by offering a cost-effective and powerful alternative to traditional CDN solutions like Amazon AWS and Google Cloud. Inspired by tools such as the Pterodactyl Panel, Darkling-CDN aims to create an accessible, efficient, and adaptable content distribution network to meet everyone's needs.

## 🌟 Vision and Mission

We are facing a scenario where conventional CDN providers charge high prices for services that often do not meet our specific needs. With **Darkling-CDN**, we want to change that! Our goal is to enable you to use your own servers or VPS to distribute videos, images, and other digital content more economically and flexibly.

Imagine a scenario where you can have full control over your CDN, with reduced costs and the ability to scale as needed. This is exactly what Darkling-CDN offers – an open-source project that empowers you to build and manage your own content distribution network.

## 🚀 Why Darkling-CDN?

**Cost Savings:** By using VPS with unlimited traffic and high-capacity ports, you can significantly reduce costs compared to traditional providers.

**Flexibility:** Full control over the configuration and management of your CDN, with the possibility of using your own servers or VPS.

**Scalability:** Expand your network according to demand, with the ability to easily add more servers.

**Community:** Developed by the community and for the community, Darkling-CDN is a platform where you can collaborate and contribute to a project that aims to make content distribution more accessible to everyone.

## 🌐 Use Cases

### Implementation Example

I acquired three VPS with 10 Gbps ports and unlimited traffic, located in New York, Miami, and Frankfurt. With these VPS, the cost to distribute 25TB of data is only $15 per month, compared to $125 per month for a conventional CDN. For smaller traffic, such as 2TB per month in Brazil, you can use local providers or take advantage of the Oracle Cloud Free Tier, which offers 10TB of free outbound traffic per month.

## ⚠️ Challenges and Solutions

### Considerations and Strategies

While Darkling-CDN offers an economical solution, some challenges may arise, such as network congestion. To mitigate these issues:

- **Add More Servers:** Expand capacity as needed by adding more VPS or servers.
- **Use Multiple Providers:** Distribute traffic among several providers to avoid overloading a single server.
- **Monitor and Adjust:** Track performance and adjust infrastructure as needed.

## 🛰️ Using BYOIP and BGP

With BYOIP (Bring Your Own IP) and BGP (Border Gateway Protocol), you can create an Anycast network with a single IP, and BGP determines the fastest path to the nearest server to the user. Although ASN and IP blocks can be expensive, there are free solutions like Gcore Labs Geo DNS and Bunny DNS, as well as paid options like CloudNS.

## 🌍 How GeoDNS Works

GeoDNS directs users to the nearest server based on geographical location. If you are outside the US or Europe, services like GeoDNS ensure you connect to the nearest server, improving latency and performance.

## 🎯 Project Goals

**Darkling-CDN** aims to be open-source software that transforms how digital content is distributed on the internet. With community support, we aim to:

- **Create an Intuitive Panel:** Facilitate the management of your CDN with a user-friendly interface.
- **Automate Configurations:** Automatically configure nodes, domains, and SSL certificates.
- **Monitor Performance:** View bandwidth consumption per node and overall.
- **Support Video Processing:** Provide tools to process and distribute videos in multiple resolutions.

## 🎬 Video Processing

We offer an initial Nginx configuration to create your own CDN, as well as a script for Google Colab that processes videos in various resolutions. The script converts videos to m3u8 and ts formats, supporting resolutions of 1080p, 720p, 480p, 320p, and even 4K. Feel free to modify the script and share your improvements with us!

## 👩‍💻 Contributions

We are always looking for passionate collaborators to help develop and expand Darkling-CDN. If you are a programmer or technology enthusiast and want to contribute, we would love your help to make Darkling-CDN an even more powerful and accessible tool. Join us and help create a more efficient and economical content distribution solution!

---

**Darkling-CDN Team**

Thank you for your interest and support. Together, we can make the internet a better and more accessible place for everyone!

-- **Discord**: MrMoreira

**===== Portugues - Brasil =====**

# Darkling-CDN

**Darkling-CDN** é um projeto inovador com a missão de democratizar a distribuição de conteúdo digital, oferecendo uma alternativa econômica e poderosa às soluções de CDN tradicionais como Amazon AWS e Google Cloud. Inspirado em ferramentas como o Pterodactyl Panel, o Darkling-CDN visa criar uma rede de distribuição de conteúdo acessível, eficiente e adaptável às necessidades de todos.

## 🌟 Visão e Missão

Estamos enfrentando um cenário onde provedores de CDN convencionais cobram altos preços por serviços que muitas vezes não atendem às nossas necessidades específicas. Com o **Darkling-CDN**, queremos mudar isso! Nosso objetivo é permitir que você utilize seus próprios servidores ou VPS para distribuir vídeos, imagens e outros conteúdos digitais de forma mais econômica e flexível.

Imagine um cenário onde você pode ter total controle sobre sua CDN, com custos reduzidos e a capacidade de escalar conforme necessário. Isso é exatamente o que o Darkling-CDN oferece – um projeto open source que empodera você a construir e gerenciar sua própria rede de distribuição de conteúdo.

## 🚀 Por Que Darkling-CDN?

**Economia:** Utilizando VPS com tráfego ilimitado e portas de alta capacidade, você pode reduzir significativamente os custos comparado aos provedores tradicionais. 

**Flexibilidade:** Controle total sobre a configuração e gestão da sua CDN, com a possibilidade de usar seus próprios servidores ou VPS.

**Escalabilidade:** Expanda sua rede de acordo com a demanda, com a capacidade de adicionar mais servidores facilmente.

**Comunidade:** Desenvolvido pela comunidade e para a comunidade, o Darkling-CDN é uma plataforma onde você pode colaborar e contribuir para um projeto que visa tornar a distribuição de conteúdo mais acessível para todos.

## 🌐 Cenários de Uso

### Exemplo de Implementação

Adquiri três VPS com portas de 10 Gbps e tráfego ilimitado, localizadas em Nova Iorque, Miami e Frankfurt. Com essas VPS, o custo para distribuir 25TB de dados é de apenas $15 mensais, em contraste com os $125 mensais de uma CDN convencional. Para tráfego menor, como 2TB mensais no Brasil, você pode utilizar provedores locais ou aproveitar a Oracle Cloud Free Tier, que oferece 10TB de saída gratuita por mês.

## ⚠️ Desafios e Soluções

### Considerações e Estratégias

Embora o Darkling-CDN ofereça uma solução econômica, alguns desafios podem surgir, como o congestionamento da rede. Para mitigar esses problemas:

- **Adicione Mais Servidores:** Expanda a capacidade conforme a demanda, adicionando mais VPS ou servidores.
- **Utilize Diversos Provedores:** Distribua o tráfego entre vários provedores para evitar sobrecarga em um único servidor.
- **Monitore e Ajuste:** Acompanhe o desempenho e ajuste a infraestrutura conforme necessário.

## 🛰️ Utilizando BYOIP e BGP

Com o BYOIP (Bring Your Own IP) e BGP (Border Gateway Protocol), você pode criar uma rede Anycast com um único IP, e o BGP determina o caminho mais rápido para o servidor mais próximo do usuário. Embora o ASN e blocos de IP possam ser caros, há soluções gratuitas como Gcore Labs Geo DNS e Bunny DNS, além de opções pagas como CloudNS.

## 🌍 Funcionamento do GeoDNS

O GeoDNS direciona os usuários para o servidor mais próximo com base na localização geográfica. Se você estiver fora dos EUA ou Europa, serviços como GeoDNS garantem que você se conecte ao servidor mais próximo, melhorando a latência e a performance.

## 🎯 Objetivos do Projeto

O **Darkling-CDN** visa ser um software open source que transforma a forma como o conteúdo digital é distribuído na internet. Com o suporte da comunidade, queremos:

- **Criar um Painel Intuitivo:** Facilitar o gerenciamento da sua CDN com uma interface amigável.
- **Automatizar Configurações:** Configuração automática de nodes, domínios e certificados SSL.
- **Monitorar Performance:** Visualizar o consumo de banda por node e no total.
- **Suporte ao Processamento de Vídeo:** Oferecer ferramentas para processar e distribuir vídeos em múltiplas resoluções.

## 🎬 Processamento de Vídeo

Oferecemos uma configuração inicial de Nginx para criar seu próprio CDN, além de um script para o Google Colab que processa vídeos em várias resoluções. O script converte vídeos para formatos m3u8 e ts, suportando resoluções de 1080p, 720p, 480p, 320p e até 4K. Sinta-se à vontade para modificar o script e compartilhar suas melhorias conosco!

## 👩‍💻 Contribuições

Estamos sempre em busca de colaboradores apaixonados para ajudar a desenvolver e expandir o Darkling-CDN. Se você é um programador ou entusiasta da tecnologia e deseja contribuir, adoraríamos sua ajuda para tornar o Darkling-CDN uma ferramenta ainda mais poderosa e acessível. Junte-se a nós e ajude a criar uma solução de distribuição de conteúdo mais eficiente e econômica!

---

**Equipe Darkling-CDN**

Agradecemos seu interesse e apoio. Juntos, podemos tornar a internet um lugar melhor e mais acessível para todos!

-- **Discord**: MrMoreira