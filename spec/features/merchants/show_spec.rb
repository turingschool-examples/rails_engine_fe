require 'rails_helper'
RSpec.describe 'the merchant show page', :vcr do
  it 'has a header with the merchants name' do
    visit '/merchants/1'
    expect(page).to have_content("Schroeder-Jerde")
  end

  it 'lists a merchants items' do
    visit '/merchants/1'
    within '.items' do
      expect(page).to have_content("Item Nemo Facere")
      expect(page).to have_content("Item Expedita Aliquam")
    end
  end

  it 'links to items show page' do
    visit '/merchants/1'
    click_on "Item Nemo Facere"
    expect(current_path).to eq("/items/4")
    save_and_open_page

  end
end
