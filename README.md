<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![LinkedIn][linkedin-shield]][linkedin-url]



<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="http://dropsiot.com.br/">
    <img src="drops.png" alt="Logo" width="150" height="80">
  </a>

  <h3 align="center">Arquitetura Modular para LoRaWAN</h3>

  <p align="center">
    Mário Neto e Inatel
    <br />
    <a href="https://blogiot.com.br"><strong>Explore a documentação »</strong></a>
    <br />
  </p>
</p>



<!-- TABLE OF CONTENTS -->
<!-- ## Conteúdo

* [Resumo](#resumo)
  * [Ferramentas](#ferramentas)
* [Guia Inicial](#guia-inicial)
  * [Prerequisites](#prerequisites)
  * [Instalação](#instalação)
* [Uso](#uso)
* [Aquitetura Provisionada](#aquitetura-provisionada)
* [Contribuições](#contribuições)
* [Licença](#licença)
* [Contato](#contato)
* [Acknowledgements](#acknowledgements) -->



<!-- ABOUT THE PROJECT -->

### Ferramentas
Este projeto utilizou ferramentas conhecidas na área de devOps.
* [Proxmox](https://www.proxmox.com)
* [Kubernetes](https://kubernetes.io)
* [Chirpstack](https://www.chirpstack.io)
* [Chirpstack Simulator](https://github.com/brocaar/chirpstack-simulator)


<!-- GETTING STARTED -->
## Guia Inicial
Esse trabalho aborda a montagem de um broker MQTT que escala automaticamente, conforme o uso de CPU.

### Pré-requisitos

É preciso ter um ambiente de Máquinas Virtuais (VMs) e um cluster Kubernetes

### Instalação

Foi criado um arquivo makefile para instalaão dos microserviços de forma ordenada.
```sh
make all
```

<!-- USAGE EXAMPLES -->
## Uso

Com essa infraestrutura provisionada, é possível o gerenciamento de uma rede de IoT com LoRaWAN.

O servidor Chirpstack permite a criação de APIs externar, conectadas à aplicações dedicadas.


<!-- ARQUITETURA -->
## Aquitetura Provisionada

<img src="imagens/arquitetura.jpeg" alt="Logo" width="340" height="180">

<!-- CONTRIBUTING -->
## Contribuições

Embora a rede proposta neste trabalho seja simples de replicar, ela adota padrões atualizados e uma arquitetura modular que permite fácil adaptação para ambientes reais. O Estado da Arte indica que, embora existam redes mais complexas, há demanda por soluções didáticas, econômicas e de fácil manutenção. Lacuna que este projeto busca preencher.


<!-- LICENSE -->
## Licença

 Creative Commons Attribution 4.0 International license


<!-- ACKNOWLEDGEMENTS -->
## Agradecimentos
Agradeço ao orientador Prof. Samuel e ao CTIC Inatel.




<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/othneildrew/Best-README-Template.svg?style=flat-square
[contributors-url]: https://github.com/mgneto26/kubeChirpstack/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/othneildrew/Best-README-Template.svg?style=flat-square
[forks-url]: https://github.com/mgneto26/kubeChirpstack/forks
[stars-shield]: https://img.shields.io/github/stars/othneildrew/Best-README-Template.svg?style=flat-square
[stars-url]: https://github.com/othneildrew/Best-README-Template/stargazers
[issues-shield]: https://img.shields.io/github/issues/othneildrew/Best-README-Template.svg?style=flat-square
[issues-url]: https://github.com/othneildrew/Best-README-Template/issues
[license-shield]: https://img.shields.io/github/license/othneildrew/Best-README-Template.svg?style=flat-square
[license-url]: https://github.com/mgneto26/kubeChirpstack?tab=License-1-ov-file#readme
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/m%C3%A1rio-neto-55553256/
[product-screenshot]: images/screenshot.png
