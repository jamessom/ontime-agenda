<!--
*** Thanks for checking out this README Template. If you have a suggestion that would
*** make this better please fork the repo and create a pull request or simple open
*** an issue with the tag "enhancement".
*** Thanks again! Now go create something AMAZING! :D
-->

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for build-url, contributors-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->

<!-- [![Build Status][build-shield]][build-url]-->
[![Contributors][contributors-shield]][contributors-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/jamessom/ontime-agenda/">
    <img src="https://github.com/jamessom/ontime-agenda/blob/master/app/assets/images/logo_3.png" alt="Logo" >
  </a>

  <h3 align="center">OnTime Agenda</h3>

  <p align="center">
    Sistema de agendamento de salas para reuniões em Rails + Bootstrap
    <br />
    <a href="https://github.com/jamessom/ontime-agenda/blob/master/CONTRIBUTING.md"><strong>Veja como contribuir com o projeto »</strong></a>
    <br />
    <br />
    <a href="https://ontime-agenda.herokuapp.com/">Demo</a>
    ·
    <a href="https://github.com/jamessom/ontime-agenda/issues">Reportar Bug's</a>
    ·
    <a href="https://github.com/jamessom/ontime-agenda/issues">Requisitar nova Feature</a>
  </p>
</p>

<!-- Sumário -->
## Sumário

* [Sobre o Projeto](#sobre-o-projeto)
  * [Desenvolvido com](#desenvolvido-com)
* [Começando](#começando)
  * [Requisitos](#requisitos)
  * [Instalação](#instalação)
* [Contributing](#contributing)
* [Licença](#licença)
* [Contato](#contato)

<!-- Sobre o Projeto -->
## Sobre o Projeto

<!--[![Product Name Screen Shot][product-screenshot]](https://ontime-agenda.herokuapp.com/)-->

### Desenvolvido com

* [Bootstrap](https://getbootstrap.com)
* [JQuery](https://jquery.com)
* [Ruby on Rails](https://rubyonrails.org/)

<!-- Começando -->
## Começando

Faça um clone do projeto :)

### Requisitos

Para uma instalação default:

* ruby 2.5.5
* Ruby on Rails 5.2.3
* PosgreSQL

Uma outra opção é utilizar o docker, nesse caso:

* Docker
* docker-compose 2

### Instalação

Com base em um ambiente de desenvolvimento utilizando o docker, faça os seguintes passos:

- Crie um arquivo `.env`, com o seguinte comando `cp sample.env .env` e preencha os valores para as variáveis de ambiente.
- Rode o comando `docker-compose build` para fazer o build da aplicação e instalar as imagens base.
- Rode o comando `docker-compose run --rm ontime_app bundle exec rails db:create` para criar o banco de dados.
- Rode o comando `docker-compose run --rm ontime_app bundle exec rails db:migrate` para criar as tabelas necessárias.
- Rode o comando `docker-compose up` para subir o servidor e ter o log direto no terminal ou utilize `docker-compose up -d` para subiro servidor e liberar a saída do terminal.

<!-- CONTRIBUTING -->
## Contributing

Contribuições são o que faz a comunidade _open source_ um lugar perfeito para aprender, inspirar e criar.
Qualquer contribuição que você fizer **será muito bem-vinda!**

Para mais detalhes de como contribuir veja [CONTRIBUTING.md](https://github.com/jamessom/ontime-agenda/blob/master/CONTRIBUTING.md).

<!-- Licença -->
## Licença

Distribuído sobre a licença MIT. Veja a [LICENSE](https://github.com/jamessom/ontime-agenda/blob/master/LICENSE) para mais informações.

<!-- Contato -->
## Contato

Jamessom Queiroz - jamessomqueiroz@gmail.com

Link do Projeto: [https://github.com/jamessom/ontime-agenda](https://github.com/jamessom/ontime-agenda)


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
<!--
[coverage-url]: 
[coverage-shield]: https://img.shields.io/codecov/c/github/jamessom/ontime-agenda.svg?style=flat-square
[build-url]: #
[build-shield]: https://img.shields.io/badge/build-passing-brightgreen.svg?style=flat-square
[product-screenshot]: #
-->
[contributors-shield]: https://img.shields.io/badge/contributors-1-orange.svg?style=flat-square
[contributors-url]: https://github.com/jamessom/ontime-agenda/graphs/contributors
[license-shield]: https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square
[license-url]: https://choosealicense.com/licenses/mit
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/jamessomqueiroz/