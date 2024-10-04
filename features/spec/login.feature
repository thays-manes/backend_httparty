# language: pt

@login
Funcionalidade: Login
    como usuário do sistema
    quero realizar requisições na api de login
    para poder acessar o cockpit

  @login_sucesso
  Cenario: Realizar login com sucesso
    Dado que envio a requisição para api de login
    Entao o status code será "200"