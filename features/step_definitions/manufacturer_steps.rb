Given /^there is a manufacturer named "([^"]*)"$/ do |arg1|
  Manufacturer.create! name: arg1, description: "Manufacturer description."
end
