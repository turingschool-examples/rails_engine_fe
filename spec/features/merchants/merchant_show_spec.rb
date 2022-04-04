require 'rails_helper'
RSpec.describe 'the merchant show page', :vcr do
  it 'has a header with the merchants name' do
    visit '/merchants/1'
    expect(page).to have_content("Schroeder-Jerde")
    save_and_open_page
  end

  it 'lists a merchants items' do
    visit '/merchants/1'
    within '.items' do
      expect(page).to have_content("Item Nemo Facere")
      expect(page).to have_content("Item Expedita Aliquam")
    end
  end
end
