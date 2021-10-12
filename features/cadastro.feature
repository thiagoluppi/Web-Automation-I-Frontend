# language: pt
# encoding: utf-8

Funcionalidade: Cadastro
  Sendo um músico que possui equipamentos musicais
  Quero fazer o meu cadastro no RockLov
  Para que eu possa disponibilizá-los para locação

@temp
Cenário: Fazer cadastro
  Dado que acesso a página de cadastro
  Quando submeto meu cadastro completo
  Então sou redirecionado para o Dashboard