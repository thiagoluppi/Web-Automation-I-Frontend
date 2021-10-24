# language: pt
# encoding: utf-8

Dado("que estou logado como {string} e {string}") do |email, password|
  visit "/"

  find("input[placeholder='Seu e-email']").set email
  # aqui não precisaria colocar password entre aspas porque se trata de uma palavra. Se fossem duas, como acima, seria necessario.
  find("input[type='password']").set password

  click_button "Entrar"
end

Dado("que acesso o formulario de cadastro de anuncios") do
  # click_button "Criar anúncio"
  find(".btn").click
  # Checkpoint para garantir que estou no lugar certo.
  expect(page).to have_css "#equipoForm"
end

Dado("que eu tenho o seguinte equipamento:") do |table|

  # Isso poderia ter sido usado para resolver o problema do professor, sem precisar mexer no feature, vide branch: aula_cadastro_anuncios_1
  # steps %{
  #   Dado que acesso a pagina principal
  #   Quando submeto minhas credenciais com "thiago.luppi@icloud.com" e "pwd123"
  # }

  # Como essa é uma tabela de chave-valor, vamos usar o rows_hash:
  # Esse método pega uma tabela de chave-valor e converter num objeto Ruby.
  # O resultado fica assim: {"thumb"=>"fender-sb.jpg", "nome"=>"Fender Strato", "categoria"=>"Cordas", "preco"=>"200"}
  @anuncio = table.rows_hash
  log @anuncio
end

Quando("submeto o cadatro desse item") do
  find("input[placeholder$=equipamento]").set @anuncio[:nome]

  el_categoria = find("#category")
  # Busca dentro do elemento "categoria" pelo texto que vem do feature e depois invoca o método select_option para selecionar a opção do combo-box.
  # o "option" é porque as opções dentro de um combo-box no css é option.
  el_categoria.find("option", text: @anuncio[:categoria]).select_option

  find("#price").set @anuncio[:preco]

  # botão Cadastrar: ==> click_button "Cadastrar"
  find(".btn").click

  sleep 5
end

Entao("devo ver esse item no meu Dashboard") do
  pending # Write code here that turns the phrase above into concrete actions
end
