Given(/^I am on the Simply Business homepage$/) do
  selenium.navigate.to "http://www.simplybusiness.co.uk"
  selenium.find_element(:xpath, ".//*[contains(., 'Business insurance, simply')]")
end

When (/^I click on the "Compare Quotes" button$/) do
  selenium.find_element(:link, 'Compare quotes').click
end

Then (/^I will go to the "([^\042]+)" page$/) do |business_text|
  wait = Selenium::WebDriver::Wait.new(:timeout => 10)
  wait.until { selenium.find_element(:id => "simplybusiness_business_about_your_business_form") }

  expect(selenium.title).to eq("Your business - Business Insurance")
  expect(selenium.find_element(:xpath, "//h1").text).to eq(business_text)
end
