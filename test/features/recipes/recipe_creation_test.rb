require "test_helper"

feature "Create recipe" do

  scenario "Can create recipe" do
    visit root_path
    page.must_have_content "Listing recipes"
    click_on "New Recipe"

    fill_in "Name", with: "A New Hope"
    fill_in "Description", with: "It is a time of civil war"
    click_on "Create Recipe"

    page.must_have_content "A New Hope"
    page.must_have_content "It is a time of civil war"
    click_on "Back"

    page.must_have_content "Listing recipes"
    page.must_have_content "A New Hope"
    page.must_have_content "It is a time of civil war"

  end

end

