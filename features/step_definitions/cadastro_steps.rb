# language: pt
# encoding: utf-8

Dado("que acesso a pagina de cadastro") do
  visit "http://rocklov-web:3000/signup"
end

Quando("submeto meu cadastro completo") do
  find("#fullName").set "Thiago Messias Luppi"
  find("#email").set "thiago.luppi@icloud.com"
  find("#password").set "pwd123"

  click_button "Cadastrar"
end

Entao("sou redirecionado para o Dashboard") do
  expect(page).to have_css ".dashboard"
end
