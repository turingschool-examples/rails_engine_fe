require 'rails_helper'

RSpec.describe 'Merchant Index Page' do
  describe 'View' do
    it 'has a title and links to merchants', :vcr do
      visit merchants_path

      expect(page).to have_content("Merchants")

      click_link("Schroeder-Jerde")
      expect(current_path).to eq("/merchants/1")
    end
  end
end
