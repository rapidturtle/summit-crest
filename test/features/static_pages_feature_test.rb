require "test_helper"

feature "Static Pages" do
  scenario "visit home page" do
    visit root_path
    page.must_have_selector "h1", text: "A Wavetronix Distributor"
  end

  scenario "visit support page" do
    visit support_path
    page.must_have_selector "h1", text: "Support"
  end

  scenario "visit about page" do
    visit about_path
    page.must_have_selector "h1", text: "About Us"
  end

  scenario "visit contact page" do
    visit contact_path
    page.must_have_selector "h1", text: "Contact Us"
  end
end
