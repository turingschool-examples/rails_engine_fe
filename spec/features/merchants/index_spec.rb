require 'rails_helper'

RSpec.describe 'Merchant Index' do
  VCR.use_cassette('merchant_index') do
    it 'Merchant Index page shows all merchants' do
      visit merchants_path
      expect(current_path).to eq(merchants_path)

      expect(page).to have_content("All Merchants")
      expect(page).to have_link("Schroeder-Jerde")
    end

    it 'Links to Merchant Show Page' do
      visit merchants_path
      expect(current_path).to eq(merchants_path)

      click_on "Schroeder-Jerde"
      expect(current_path).to eq(merchant_path("1"))
    end
  end
end
