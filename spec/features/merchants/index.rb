require 'rails_helper'

RSpec.spec 'Merchant Index Page' do
  describe 'View' do
    it 'has a title and links to merchants' do
      merchant_1 = create(:merchant)
      merchant_2 = create(:merchant)
      merchant_3 = create(:merchant)

      visit '/merchants'

      expect(page).to have_content("Merchants")
      expect(page).to have_link(merchant_1.name)
      expect(page).to have_link(merchant_2.name)
      expect(page).to have_link(merchant_3.name)

      click_link("#{merchant_1.name}")

      expect(current_path).to eq("/merchants/#{merchant_1.id}")
      expect(page).to have_content(merchant_1.items.first.name)
    end
  end
end
