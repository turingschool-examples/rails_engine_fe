require 'rails_helper'

RSpec.describe "merchants index" do
  it "shows all merchant names which link to their show page", :vcr do
    visit "/merchants"

    expect(page).to have_content("Schroeder-Jerde")
    expect(page).to have_content("Klein, Rempel and Jones")
    expect(page).to have_content("Glover Inc")

    click_link "Schroeder-Jerde"
    expect(current_path).to eq("/merchants/1")
  end
end