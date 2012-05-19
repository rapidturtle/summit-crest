Given /^I go to the new manufacturer page$/ do
  visit new_manufacturer_path
end

When /^I go to the home page$/ do
  visit root_url
end

Given /^I fill in "([^"]*)" with "([^"]*)"$/ do |arg1, arg2|
  fill_in arg1, with: arg2
end

When /^I press "([^"]*)"$/ do |arg1|
  click_button arg1
end

Then /^I should see "([^"]*)"$/ do |text|
  page.should have_content(text)
end

Then /^I should be on the manufacturer page$/ do
  manufacturer_path(1).should == "/manufacturers/1"
end
