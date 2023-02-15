require 'rails_helper'

RSpec.describe 'Items Index' do 
  describe 'when I visit /items' do 
    it 'shows a list of items by name' do 
      visit items_path 
      
      expect(page.status_code).to eq 200
      expect(page).to have_content("Items")
      expect(page).to have_content("Total Items: 100")
      expect(page).to have_content("Item Expedita Aliquam")
      expect(page).to have_content("Item Expedita Fuga")
      expect(page).to have_content("Item Quo Magnam")
    end

    xit 'has a link for each item name to item show page' do 
      visit items_path 
      
      expect(page.status_code).to eq 200

      click_link "Item Quo Magnam"

      expect(current_path).to eq item_path(9)

      visit merchants_path 

      click_link "Item Expedita Fuga"

      expect(current_path).to eq item_path(7)
    end
  end
end