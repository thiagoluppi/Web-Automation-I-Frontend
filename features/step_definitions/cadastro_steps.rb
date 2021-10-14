# language: pt
# encoding: utf-8


Dado("que acesso a pagina de cadastro") do
  visit "http://rocklov-web:3000/signup"
end

Quando("submeto meu cadastro completo") do
  Mongodb.new.remove_user("thiago.luppi@icloud.com")
  
  find("#fullName").set "Thiago Messias Luppi"
  find("#email").set "thiago.luppi@icloud.com"
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

Quando('submeto meu cadastro sem o email') do
  find("#fullName").set "Thiago Messias Luppi"
  find("#password").set "pwd123"

  click_button "Cadastrar"
end

Entao('vejo a mensagem de alerta: Oops. Informe um email válido!') do
  expect(find(".alert-dark").text).to eql "Oops. Informe um email válido!"
end

Quando('submeto meu cadastro com email incorreto') do
  find("#fullName").set "Thiago Messias Luppi"
  find("#email").set "123"
  find("#password").set "pwd123"

  click_button "Cadastrar"
end

Quando('submeto meu cadastro sem a senha') do
  find("#fullName").set "Thiago Messias Luppi"
  find("#email").set Faker::Internet.free_email

  click_button "Cadastrar"
end

Entao('vejo a mensagem de alerta: Oops. Informe sua senha secreta!') do
  expect(find(".alert-dark").text).to eql "Oops. Informe sua senha secreta!"
end