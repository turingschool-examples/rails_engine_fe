require 'rails_helper'
# As a visitor,
# When I visit '/merchants'
# I should see a list of merchants by name
# and when I click the merchant's name
# I should be on page '/merchants/:id'
# And I should see a list of items that merchant sells.
RSpec.describe "Merchant Index Page" do
  describe "As a visitor" do
    it 'I see a list of all merchants by name' do
      # merchants_list = File.read('./spec/fixtures/merchants.json')
      # merchant_json = JSON.parse(merchants_list, symbolize_names: true)
      # merchants = Merchant.new(merchant_json)

      visit merchants_path

      expect(page).to have_content("Merchants:")

      within('#merchants_list') do
        expect(page).to have_content("Schroeder-Jerde")
        expect(page).to have_content("Klein, Rempel and Jones")
        expect(page).to have_content("Willms and Sons")
        expect(page).to have_content("Cummings-Thiel")
      end
    end

    it 'When I click the merchants name I am taken to their show page' do

      visit merchants_path

      click_on "Schroeder-Jerde"

      expect(current_path).to eq('/merchants/1')
    end 
  end
end
