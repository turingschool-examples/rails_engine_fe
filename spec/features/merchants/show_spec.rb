require 'rails_helper'

RSpec.describe 'Merchant Show Page' do
  describe 'View' do
    it 'has a title and links to items', :vcr do
      visit merchant_path(1)

      expect(page).to have_content("Schroeder-Jerde's Items")

      click_link("Item Nemo Facere")
      expect(current_path).to eq("/merchants/1/items")
    end
  end
end
