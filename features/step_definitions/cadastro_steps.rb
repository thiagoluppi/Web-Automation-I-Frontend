# language: pt
# encoding: utf-8

Dado("que acesso a pagina de cadastro") do
  visit "http://rocklov-web:3000/signup"
end

Quando("submeto meu cadastro completo") do
  find("#fullName").set "Thiago Messias Luppi"
  find("#email").set Faker::Internet.free_email
  find("#password").set "pwd123"

  click_button "Cadastrar"
end

Entao("sou redirecionado para o Dashboard") do
  expect(page).to have_css ".dashboard"
end

Quando("submeto meu cadastro sem o nome") do
  find("#email").set Faker::Internet.free_email
  find("#password").set "pwd123"

  click_button "Cadastrar"
end

Entao("vejo a mensagem de alerta: Oops. Informe seu nome completo") do
  expect(find(".alert-dark").text).to eql "Oops. Informe seu nome completo!"
end
