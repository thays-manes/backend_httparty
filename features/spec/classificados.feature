# language: pt

@classificados
Funcionalidade: Listar classificados atendidos
    como usuário do sistema
    quero realizar requisições na api de login
    para poder acessar o cockpit

  @login_sucesso
  Cenario: Realizar busca de classificados atendidos
    Dado que envio a requisição para api de classificados
    Entao o status code será "200"
    E a api vai retornar as informações dos classificados atendidos