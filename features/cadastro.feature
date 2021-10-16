# language: pt
# encoding: utf-8

@suite_cadastro
Funcionalidade: Cadastro
  Sendo um músico que possui equipamentos musicais
  Quero fazer o meu cadastro no RockLov
  Para que eu possa disponibilizá-los para locação

@cadastro
Cenario: Fazer cadastro
  Dado que acesso a pagina de cadastro
  Quando submeto o seguinte formulario de cadastro:
    | nome                  | email                   | senha |
    | Thiago Messias Luppi  | thiago.luppi@icloud.com | pwd123|
  Entao sou redirecionado para o Dashboard


@tentativa_cadastro
Cenario: Submeter cadastro sem o nome
  Dado que acesso a pagina de cadastro
  Quando submeto o seguinte formulario de cadastro:
    | nome                  | email                   | senha |
    |                       | thiago.luppi@icloud.com | pwd123|
  Entao vejo a mensagem de alerta: "Oops. Informe seu nome completo!"

@tentativa_cadastro
Cenario: Submeter cadastro sem o email
  Dado que acesso a pagina de cadastro
  Quando submeto o seguinte formulario de cadastro:
    | nome                  | email                   | senha |
    | Thiago Messias Luppi  |                         | pwd123|
  Entao vejo a mensagem de alerta: "Oops. Informe um email válido!"

@tentativa_cadastro
Cenario: Submeter cadastro com o email incorreto
  Dado que acesso a pagina de cadastro
  Quando submeto o seguinte formulario de cadastro:
    | nome                  | email                   | senha |
    | Thiago Messias Luppi  | 123                     | pwd123|
  Entao vejo a mensagem de alerta: "Oops. Informe um email válido!"

@tentativa_cadastro
Cenario: Submeter cadastro sem a senha
  Dado que acesso a pagina de cadastro
  Quando submeto o seguinte formulario de cadastro:
    | nome                  | email                   | senha |
    | Thiago Messias Luppi  | thiago.luppi@icloud.com |       |
  Entao vejo a mensagem de alerta: "Oops. Informe sua senha secreta!"