When /^I go to the home page$/ do
  visit root_url
end

Then /^I should see "([^"]*)"$/ do |text|
  assert page.has_content?(text), "expected to see content '#{text}' in '#{page.body}'"
end
