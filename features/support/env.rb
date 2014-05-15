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
