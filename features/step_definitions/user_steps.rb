Given /^I have a user account$/ do
  User.create!
end

When /^I sign in as "([^"]*)" with password "([^"]*)"$/ do |email, password|
  visit root_url
  click_on "Sign out" if page.has_content?("Sign out")
  click_on "Sign in"
  fill_in "email", with: email
  fill_in "password", with: password
  click_button "Sign in"
end

Then /^I should see "([^"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end
