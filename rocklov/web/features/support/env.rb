require "capybara"
require "capybara/cucumber"
require "faker"


Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host ="http://rocklov-web:3000"
    config.default_max_wait_time = 10  # tempo de time out do teste até 10 segundos para ir para a proxima etapa
end