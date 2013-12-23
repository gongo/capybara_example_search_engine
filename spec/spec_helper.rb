require 'capybara/rspec'
require 'selenium-webdriver'

Capybara.register_driver :selenium do |app|
  caps = Selenium::WebDriver::Remote::Capabilities.firefox
  url  = "http://127.0.0.1:4444/wd/hub/"
  opts = { desired_capabilities: caps, browser: :remote, url: url }
  Capybara::Selenium::Driver.new(app, opts)
end

Capybara.default_driver = :selenium
Capybara.javascript_driver = :selenium
Capybara.run_server = false
