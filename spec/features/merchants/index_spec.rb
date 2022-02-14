require 'rails_helper'

RSpec.describe 'Merchants Index Page' do
  describe 'when I visit the merchants index page' do
    it 'has a header that says merchants' do
      visit '/merchants'
      expect(page).to have_content("Merchants")
    end
    it 'displays a list of merchants by name' do
      visit '/merchants'

      expect(page.status_code).to eq 200

      expect("Schroeder-Jerde").to appear_before("Klein, Rempel and Jones")
      expect("Klein, Rempel and Jones").to appear_before("Willms and Sons")
      expect("Willms and Sons").to appear_before("Cummings-Thiel")
    end

    it 'allows me to click on each merchants name to go to their show page' do
      merchant = MerchantFacade.all_merchants.first

      visit '/merchants'

      expect(page.status_code).to eq 200

      click_link "Schroeder-Jerde"
      expect(current_path).to eq("/merchants/#{merchant.id}")
    end
  end
end
