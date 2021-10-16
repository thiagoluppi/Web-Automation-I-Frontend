# language: pt
# encoding: utf-8

Funcionalidade: Cadastro
  Sendo um músico que possui equipamentos musicais
  Quero fazer o meu cadastro no RockLov
  Para que eu possa disponibilizá-los para locação

@cadastro
Cenario: Fazer cadastro
  Dado que acesso a pagina de cadastro
  Quando submeto meu cadastro completo
  Entao sou redirecionado para o Dashboard


@tentativa_cadastro
Cenario: Submeter cadastro sem o nome
  Dado que acesso a pagina de cadastro
  Quando submeto meu cadastro sem o nome
  Entao vejo a mensagem de alerta: "Oops. Informe seu nome completo!"

@tentativa_cadastro
Cenario: Submeter cadastro sem o email
  Dado que acesso a pagina de cadastro
  Quando submeto meu cadastro sem o email
  Entao vejo a mensagem de alerta: "Oops. Informe um email válido!"

@tentativa_cadastro
Cenario: Submeter cadastro com o email incorreto
  Dado que acesso a pagina de cadastro
  Quando submeto meu cadastro com email incorreto
  Entao vejo a mensagem de alerta: "Oops. Informe um email válido!"

@tentativa_cadastro
Cenario: Submeter cadastro sem a senha
  Dado que acesso a pagina de cadastro
  Quando submeto meu cadastro sem a senha
  Entao vejo a mensagem de alerta: "Oops. Informe sua senha secreta!"