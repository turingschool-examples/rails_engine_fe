require 'rails_helper'

RSpec.describe 'Merchants Index Page', type: :feature do
  it "lists every merchant" do
    visit "/merchants"

    expect(page).to have_content("Schroeder-Jerde")
    expect(page).to have_content("Klein, Rempel and Jones")
    expect(page).to have_content("Willms and Sons")
    expect(page).to have_content("Cummings-Thiel")
  end

  it "links to each merchant's show page" do
    visit "/merchants"

    click_link("Klein, Rempel and Jones")
    expect(current_path).to eq("/merchants/2")
  end
end
