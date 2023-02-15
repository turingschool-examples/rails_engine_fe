require 'rails_helper'

RSpec.describe 'Merchant Index' do 
  describe 'when I visit /merchants' do 
    it 'shows a list of merchants by name' do 
      visit merchants_path 
      
      expect(page.status_code).to eq 200
      expect(page).to have_content("Merchants")
      expect(page).to have_content("Total Merchants: 100")
      expect(page).to have_content("Schroeder-Jerde")
      expect(page).to have_content("Willms and Sons")
      expect(page).to have_content("Pollich and Sons")
    end

    it 'has a link for each merchant name to merchant show page' do 
      visit merchants_path 
      
      expect(page.status_code).to eq 200

      click_link "Schroeder-Jerde"

      expect(current_path).to eq merchant_path(1)

      visit merchants_path 

      click_link "Pollich and Sons"

      expect(current_path).to eq merchant_path(11)
    end
  end
end