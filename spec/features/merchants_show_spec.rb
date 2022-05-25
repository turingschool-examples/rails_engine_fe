require 'rails_helper'

RSpec.describe "merchants show page" do
  it "has merchant's items", :vcr do
    visit "/merchants"

    expect(page).to have_content("Schroeder-Jerde")
    expect(page).to have_content("Klein, Rempel and Jones")
    expect(page).to have_content("Glover Inc")

    click_link "Schroeder-Jerde"
    expect(current_path).to eq("/merchants/1")

    expect(page).to have_content("Item Nemo Facere")
    expect(page).to have_content("Item Ea Voluptatum")
  end
end