require "test_helper"

feature "Delete a step" do

  scenario "Delete a step" do

    visit recipe_path(recipes(:onestep).id)

    page.must_have_content steps(:jump).instruction

    click_on "Delete"

    page.must_have_content recipes(:onestep).name
    page.wont_have_content steps(:jump).instruction

    end

end

