# Poc - API
>  Base de automação para projeto api cucumber
 
OBS: Todas as url´s usadas nesse projeto foram alteradas para não termos problemas com outras empresas. 
Esse teste foi criado para um projeto onde trabalhei. Por isso retirei algumas informações. 
Mas acredito que pela estrutura e configurações do projeto vocês consigam avaliar. 


## Índices
- [Guia de instalação](#installation)
- [FAQ](#faq)
- [Resources](#resources)

## Guia de instalação
- Todo o código do projeto se encontra no repositório

1. Dependências Globais

    * Instalar o [Ruby + Devkit] link para download =>(https://rubyinstaller.org/downloads/)

    * Ou Instalar o Ruby via [Homebrew](http://brew.sh/)
    ```
    $ brew install ruby
    ```
    * Instalar Bundler (Sudo pode ser necessário)
    - Bundler é o gerenciador de gemas do Ruby, oferece um ambiente consistente para o gerenciamento e instalação
    das dependencias do projeto.
    ```
    $ gem install bundler
    ```
2. Dependências do Projeto

	* Instalar pacotes (Usar sudo caso necessário)
	```
	$ bundle install
	```

### Executar Testes
  O comando cucumber permite executar uma série de funções que podem ser informadas pelo comando “cucumber -help”, o argumento “-t” significa que iremos passar uma tag por parâmetro e “@tag_criada” é a tag que será executada, pois foi informada na escrita da feature.
  ```
  Ex :
  
  $ cucumber

  $ cucumber -t @tag_criada
```

## FAQ

- **Sessão para perguntas frequentes**

# WIP(Work in progress)
- Duvidas, criticas e sugestões são bem vindas

### Resources

##### [Cucumber Documentation](https://cucumber.io/docs/reference)

##### [Ruby Documentation](http://ruby-doc.org/)

##### [Stack Overflow](http://stackoverflow.com/)
