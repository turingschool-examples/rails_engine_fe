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
  end
end