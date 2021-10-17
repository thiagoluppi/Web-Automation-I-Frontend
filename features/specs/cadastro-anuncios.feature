# language: pt
# encoding: utf-8

Funcionalidade: Cadastro de Anuncios
  Sendo um usuario cadastrado no Rocklov que possui equipamentos musicais
  Quero cadastrar meus equipamentos
  Para que eu possa disponibilizar para aluguel

  Cenario: Novo equipo
    Dado que eu tenho o seguinte equipamento:
      | thumb     | fender-sb.jpg |
      | nome      | Fender Strato |
      | categoria | Cordas        |
      | preco     | 200           |
    Quando submeto o cadatro desse item
    Entao devo ver esse item no meu Dashboard