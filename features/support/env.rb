require "capybara"
require "capybara/cucumber"
require "faker"
require "pry"

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
end
