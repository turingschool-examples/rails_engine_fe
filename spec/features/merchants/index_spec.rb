require 'rails_helper'
# As a visitor,
# When I visit '/merchants'
# I should see a list of merchants by name
# and when I click the merchant's name
# I should be on page '/merchants/:id'
# And I should see a list of items that merchant sells.
RSpec.describe "Merchant Index Page" do
  describe "As a visitor" do
    before :each do
      @merchants_list = File.read('./spec/fixtures/merchants.json')
      @merchant_json = JSON.parse(@merchants_list, symbolize_names: true)

      @merchant_items_list = File.read('./spec/fixtures/merchant_items.json')
      @item_json = JSON.parse(@merchant_items_list, symbolize_names: true)
    end

    it 'I see a list of all merchants by name' do

      visit merchants_path

      expect(page).to have_content("Merchants:")
      @merchant_json.each do |merchant|

        within('#merchants-list') do
          expect(page).to have_content(merchant[:attributes][:name])

        end
      end
    end

    it 'When I click the merchants name I am taken to their show page' do

      visit merchants_path

      click_on "Schroeder-Jerde"

      expect(current_path).to eq('/merchants/1')
    end

    it 'When I visit the merchant show page I see a list of all items for that merchant' do

      visit '/merchants/1'

      @item_json.each do |item|

        within('#items-list') do
          expect(page).to have_content(item[:attributes][:name])
        end
      end
    end
  end
end
