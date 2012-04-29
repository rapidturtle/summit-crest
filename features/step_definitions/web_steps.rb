When /^I go to the home page$/ do
  visit root_url
end

Then /^I should see "([^"]*)"$/ do |text|
  page.has_content?(text).must_be true
end
