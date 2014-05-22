require 'rspec/expectations'
require 'selenium-webdriver'

def driver_capabilities
  {
    :device      => 'iPhone',
    :browserName => 'Safari iOS',
    :version     => '7.1',
    :platform    => 'Mac',
    :app         => 'Safari'
  }
end

def server_url
  "http://127.0.0.1:4723/wd/hub"
end

def selenium
  @driver ||= Selenium::WebDriver.for(:remote, :desired_capabilities => driver_capabilities, :url => server_url)
end

After { selenium.quit }

#require 'selenium-webdriver'
#require 'capybara'
#require 'capybara/cucumber'
#
#
#def driver_capabilities
#  {
#    :device      => 'iPhone',
#    :browserName => 'Safari iOS',
#    :version     => '7.1',
#    :platform    => 'Mac',
#    :app         => 'Safari'
#  }
#end
#
#def server_url
#  "http://127.0.0.1:4723/wd/hub"
#end
#
#Capybara.register_driver :iOS do |app|
#  Capybara::Selenium::Driver.new(app,
#    browser: :remote,
#    desired_capabilities: Selenium::WebDriver::Remote::Capabilities.safari(driver_capabilities),
#    url: server_url)
#end
#
#Capybara.default_driver = :iOS
#
