require "test_helper"

feature "Edit a step" do

  scenario "Edit a step" do

    visit edit_recipe_step_path(recipes(:revolution).id, steps(:famine).id)

    page.must_have_content steps(:famine).instruction

    fill_in "Ordinality", with: "5"
    fill_in "Instruction", with: "Fifthly, take a day off to enjoy the chaos"

    click_on "Update Step"

    page.wont_have_content steps(:famine).instruction
    page.must_have_content "Fifthly, take a day off to enjoy the chaos"

    end

end

