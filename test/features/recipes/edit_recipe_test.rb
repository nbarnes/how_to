require "test_helper"

feature "edit recipe" do

  scenario "Can edit recipe" do

    visit root_path

    page.must_have_content "Listing recipes"
    page.must_have_content recipes(:revolution).name
    page.must_have_content recipes(:revolution).description

    page.find("tr:last").click_on "Edit"

    fill_in "Name", with: "The Phantom Menace"
    fill_in "Description", with: "We waited 20 years for this?"

    click_on "Update Recipe"

    page.wont_have_content recipes(:revolution).name
    page.wont_have_content recipes(:revolution).description

    page.must_have_content "The Phantom Menace"
    page.must_have_content "We waited 20 years for this?"


  end

end

