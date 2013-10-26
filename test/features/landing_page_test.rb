require "test_helper"

feature "Front page" do
  scenario "Displays the how-to landing page" do
    visit root_path
    page.must_have_content "Listing recipes"
  end
end
