Feature: Test Appium with Safari
  As QA team members with a Simulated iPhone
  We want to test Safari using Appium
  So we can make automated tests at some point in the future

Scenario: click on "Compare quotes button"
  Given I am on the Simply Business homepage
  When I click on the "Compare Quotes" button
  Then I will go to the "Insurance for business" page
