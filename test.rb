require 'selenium-webdriver'

capabilities = {
  :device => 'iPhone',
  :browserName => 'Safari',
  :version => '6.0',
  :platform => 'iOS',
  :app => 'Safari'
}

driver = Selenium::WebDriver.for(:remote, :desired_capabilities => capabilities, :url => 'http://127.0.0.1:4723/wd/hub')
driver.navigate.to "http://google.com"

element = driver.find_element(:name, 'q')
element.send_keys "Selenium Tutorials"
element.submit

sleep 5
driver.quit
