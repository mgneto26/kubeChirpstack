<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]



<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/othneildrew/Best-README-Template">
    <img src="logoiot.webp" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Arquitetura Modular para IoT</h3>

  <p align="center">
    Servidor Chirpstack instalado de forma robusta 
    <br />
    <a href="https://github.com/othneildrew/Best-README-Template"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/othneildrew/Best-README-Template">View Demo</a>
    ·
    <a href="https://github.com/othneildrew/Best-README-Template/issues">Report Bug</a>
    ·
    <a href="https://github.com/othneildrew/Best-README-Template/issues">Request Feature</a>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
## Table of Contents

* [Resumo](#resumo)
  * [Ferramentas](#ferramentas)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [Usage](#usage)
* [Roadmap](#roadmap)
* [Contributing](#contributing)
* [License](#license)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)



<!-- ABOUT THE PROJECT -->
## Resumo
A internet das Coisas (IoT) vem transformando setores como agronegócio, indústria e cidades inteligentes. Em um ecossistema IoT, a infraestrutura precisa lidar com grandes quantidades de dispositivos conectados, mensagens assíncronas e variações bruscas de carga. Nesse cenário, o Kubernetes se apresenta como uma plataforma ideal para garantir disponibilidade, escalabilidade, modularidade no gerenciamento de aplicações e serviços distribuídos.
Nosso trabalho aborda a montagem de um broker MQTT que escala automaticamente, conforme o uso de CPU, em um cluster Kubernetes. O broker MQTT é o serviço central responsável por intermediar a comunicação entre dispositivos que usam o protocolo MQTT (Message Queuing Telemetry Transporte), muito comum em aplicações de IoT pela leveza e eficiência em redes instáveis ou com baixa largura de banda.
O cluster Kubernetes foi configurado na plataforma Proxmox, permitindo o gerenciamento local de máquinas virtuais.
Para simulação das carga, utilizou-se o Chirpstack Simulator, que emula dispositivos LoRaWAN enviando dados para a rede. O servidor Chirpstack é uma plataforma de código aberto composta por vários componentes que, juntos, possibilitam a construção de redes LoRaWAN. Sua utilização neste projeto proporciona um ambiente de teste mais próximo da realidade de uma aplicação IoT massiva, reforçando a relevância da análise de escalabilidade.

### Ferramentas
Este projeto utilizou ferramentas conhecidas na área de devOps.
* [Proxmox](https://getbootstrap.com)
* [Kubernetes](https://jquery.com)
* [Chirpstack](https://laravel.com)
* [Chirpstack Simulator](https://laravel.com)



<!-- GETTING STARTED -->
## Getting Started

This is an example of how you may give instructions on setting up your project locally.
To get a local copy up and running follow these simple example steps.

### Pré-requisitos

Primeiramente é preciso criar templates de VMs, no Proxmox, contendo uma versão do Ubuntu. Escolhemos fazer a instalação de uma imagem em cloud do Ubuntu oficial mínima [1] [2]
```sh
sudo apt update && sudo apt dist-upgrade
```
Verifica se o IP é estático no control plane (opcional)
```sh
# faz um backup do arquivo antes
sudo cp nomeArquivo.yaml nomeArquivo.yaml.bak  
sudo nano 50-cloud-init.yaml

# exeomplos abaixo
... # modelo com dhcp
eth0:
    dhcp: true
    match:
            macaddresses: 4e:26:ee:c2:28:fc
    set-name: eth0

... # modelo com IP estático
eth0:
    addresses: [10.10.10.213/24]
    nameservers:
            addresses: [10.10.10.1]    # IP do Gateway | IP do servodr DNS primário
    routes:
            - to: default
                via: 10.10.10.1
```


### Installation

1. Get a free API Key at [https://example.com](https://example.com)
2. Clone the repo
```sh
git clone https://github.com/your_username_/Project-Name.git
```
3. Install NPM packages
```sh
npm install
```
4. Enter your API in `config.js`
```JS
const API_KEY = 'ENTER YOUR API';
```



<!-- USAGE EXAMPLES -->
## Usage

Use this space to show useful examples of how a project can be used. Additional screenshots, code examples and demos work well in this space. You may also link to more resources.

_For more examples, please refer to the [Documentation](https://example.com)_



<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/othneildrew/Best-README-Template/issues) for a list of proposed features (and known issues).



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.



<!-- CONTACT -->
## Contact

Your Name - [@your_twitter](https://twitter.com/your_username) - email@example.com

Project Link: [https://github.com/your_username/repo_name](https://github.com/your_username/repo_name)



<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements
* [GitHub Emoji Cheat Sheet](https://www.webpagefx.com/tools/emoji-cheat-sheet)
* [Img Shields](https://shields.io)
* [Choose an Open Source License](https://choosealicense.com)
* [GitHub Pages](https://pages.github.com)
* [Animate.css](https://daneden.github.io/animate.css)
* [Loaders.css](https://connoratherton.com/loaders)
* [Slick Carousel](https://kenwheeler.github.io/slick)
* [Smooth Scroll](https://github.com/cferdinandi/smooth-scroll)
* [Sticky Kit](http://leafo.net/sticky-kit)
* [JVectorMap](http://jvectormap.com)
* [Font Awesome](https://fontawesome.com)





<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/othneildrew/Best-README-Template.svg?style=flat-square
[contributors-url]: https://github.com/othneildrew/Best-README-Template/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/othneildrew/Best-README-Template.svg?style=flat-square
[forks-url]: https://github.com/othneildrew/Best-README-Template/network/members
[stars-shield]: https://img.shields.io/github/stars/othneildrew/Best-README-Template.svg?style=flat-square
[stars-url]: https://github.com/othneildrew/Best-README-Template/stargazers
[issues-shield]: https://img.shields.io/github/issues/othneildrew/Best-README-Template.svg?style=flat-square
[issues-url]: https://github.com/othneildrew/Best-README-Template/issues
[license-shield]: https://img.shields.io/github/license/othneildrew/Best-README-Template.svg?style=flat-square
[license-url]: https://github.com/othneildrew/Best-README-Template/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/othneildrew
[product-screenshot]: images/screenshot.png
