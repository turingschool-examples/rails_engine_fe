require 'rails_helper'

RSpec.describe "The Merchant show page" do
  it 'links info from the index page' do
    visit '/merchants'
    click_link("Schroeder-Jerde")
    expect(current_path).to eq("/merchants/1")
    expect(page).to have_content("Schroeder-Jerde")
  end

  it 'lists all merchants items' do
    visit '/merchants/1'
    expect(page).to have_content("Item Nemo Facere")
    expect(page).to have_content("Item Expedita Aliquam")
    expect(page).to have_content("Item Provident At")
  end
end
