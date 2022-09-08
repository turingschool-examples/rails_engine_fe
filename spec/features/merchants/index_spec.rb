require "rails_helper"

RSpec.describe "Merchant index page" do
  it "displays a list of merchants" do
   
    visit "/merchants"
    expect(page).to have_link("Schroeder-Jerde")
    expect(page).to have_link("Hand-Spencer")
    expect(page).to have_link("Hickle-Hessel")
  end
  it "merchants name should link to merchants show page" do
   
    visit "/merchants"
    click_on "Hand-Spencer"

    expect(page).to have_content("Hand-Spencer")
    expect(page).to have_content("Items")
    expect(page).to_not have_content("Schroeder-Jerde")
  end
end

# As a visitor,
# When I visit '/merchants'
# I should see a list of merchants by name
# and when I click the merchant's name
# I should be on page '/merchants/:id'
# And I should see a list of items that merchant sells.