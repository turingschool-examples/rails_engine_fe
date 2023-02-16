require 'rails_helper' 

RSpec.describe 'merchant show page' do 
  describe 'when I visit /merchants/:id' do 
    it 'has a list of items that merchant sells' do 
      visit merchant_path(1)

      expect(page.status_code).to eq 200 
      expect(page).to have_content("Schroeder-Jerde")
      expect(page).to have_content("Total Merchant Items: 15")
      expect(page).to have_content("Item Nemo Facere")
      expect(page).to have_content("Item Expedita Fuga")
      expect(page).to have_content("Item Autem Minima")
    end

    it 'has a link to the item show page for each item' do 
      visit merchant_path(1)

      click_link "Item Nemo Facere"

      expect(current_path).to eq item_path(4)

      visit merchant_path(8)

      click_link "Item Commodi Vel"

      expect(current_path).to eq item_path(130)
    end
  end
end