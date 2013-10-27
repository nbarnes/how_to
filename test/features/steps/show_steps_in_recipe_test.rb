require "test_helper"

feature "View steps" do

  scenario "View steps while viewing recipe" do
    visit root_path

    page.must_have_content "Listing recipes"

    page.find("tr:last").click_on "Show"

    page.must_have_content recipes(:revolution).name

    page.must_have_content steps(:famine).instruction
    page.must_have_content steps(:discontent).instruction
    page.must_have_content steps(:firepower).instruction

  end

end

