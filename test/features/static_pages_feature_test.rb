require "test_helper"

feature "Static Pages" do
  scenario "visit home page" do
    visit root_path
    page.must_have_selector "h1", text: "SummitCrest"
  end
end
