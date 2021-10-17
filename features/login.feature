# language: pt

Funcionalidade: Login
  Sendo um usuario cadastrado
  Quero acessar o sistema Rocklov
  Para que eu possa anunciar meus equipamentos musicais

  @temp
  Cenario: Login do usuario
    Dado que acesso a pagina principal
    Quando submeto minhas credenciais com "thiago.luppi@icloud.com" e "pwd123"
    Entao sou redirecionado para o Dashboard

  # Cenario: Senha incorreta
  #   Dado que acesso a pagina principal
  #   Quando submeto minhas credenciais com senha incorreta
  #   Entao vejo a mensagem de alerta