# language: pt
# encoding: utf-8

Entao("sou redirecionado para o Dashboard") do
  expect(page).to have_css ".dashboard"
end
