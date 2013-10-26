require "test_helper"

feature "Delete recipe" do

  scenario "Can delete recipe" do

    visit root_path
    page.must_have_content "Listing recipes"
    page.must_have_content recipes(:revolution).name
    page.must_have_content recipes(:revolution).description

    page.find("tr:last").click_on "Destroy"

    page.wont_have_content recipes(:revolution).name
    page.wont_have_content recipes(:revolution).description

  end

end

