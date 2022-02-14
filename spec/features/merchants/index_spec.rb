require 'rails_helper'

RSpec.describe 'Merchants Index' do
  describe 'user visits the merchant index' do

    it 'displays a list of merchants by name as links' do
      visit merchants_path

      expect(page).to have_link("Schroeder-Jerde", href: merchant_path(1))
      expect(page).to have_link("Ferry and Sons", href: merchant_path(24))
    end
  end

  describe 'user clicks on a merchant name' do
    it 'routes to that merchant show page' do
      visit merchants_path

      expect(current_path).to eq(merchants_path)
      click_link("Ferry and Sons")

      expect(current_path).to eq(merchant_path(24))
    end
  end
end
