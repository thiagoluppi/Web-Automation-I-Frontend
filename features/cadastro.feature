# language: pt
# encoding: utf-8

Funcionalidade: Cadastro
  Sendo um músico que possui equipamentos musicais
  Quero fazer o meu cadastro no RockLov
  Para que eu possa disponibilizá-los para locação

@temp
Cenario: Fazer cadastro
  Dado que acesso a pagina de cadastro
  Quando submeto meu cadastro completo
  Entao sou redirecionado para o Dashboard


@sem_nome
Cenario: Submeter cadastro sem o nome
  Dado que acesso a pagina de cadastro
  Quando submeto meu cadastro sem o nome
  Entao vejo a mensagem de alerta: Oops. Informe seu nome completo




Cenario: Submeter cadastro sem o email
  Dado que acesso a pagina de cadastro
  Quando submeto meu cadastro sem o email
  Entao vejo a mensagem de alerta: Oops. Informe um email válido!