require 'rails_helper'

RSpec.describe 'Merchant Show' do
  VCR.use_cassette('merchant_show') do
    it 'Merchant Show page has section for all its items' do
      visit merchant_path("1")
      expect(current_path).to eq(merchant_path("1"))

      expect(page).to have_content("Schroeder-Jerde")
      expect(page).to have_content("Items for Schroeder-Jerde")
    end

    it 'lists all its items' do
      visit merchant_path("1")
      expect(current_path).to eq(merchant_path("1"))

      expect(page).to have_link("Item Nemo Facere")
      expect(page).to have_link("Item Expedita Aliquam")
      expect(page).to have_link("Item Provident At")
    end

    it 'each item links to its show page' do
      visit merchant_path("1")
      expect(current_path).to eq(merchant_path("1"))

      expect(page).to have_link("Item Quidem Suscipit")

      click_on "Item Quidem Suscipit"
      expect(current_path).to eq(item_path("10"))
    end
  end
end
