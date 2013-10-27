require "test_helper"

feature "Create a step" do

  scenario "Create a step" do
    visit recipe_path(recipes(:revolution).id)

    page.must_have_content recipes(:revolution).name
    page.must_have_content steps(:firepower).instruction

    click_on "Add Step"

    fill_in "Ordinality", with: "4"
    fill_in "Instruction", with: "Fourthly, let nature take its course"

    click_on "Create Step"

    page.must_have_content recipes(:revolution).name
    page.must_have_content "Fourthly, let nature take its course"

    end

end

