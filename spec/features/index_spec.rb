require 'rails_helper'

RSpec.describe 'merchants index page', type: :feature do
  describe 'As a visitor' do
    describe 'When I visit "/merchants"' do

      it "I should see a list of merchants by name & when I click the merchant's name I should be on page '/merchants/:id' And I should see a list of items that merchant sells.", :vcr do

        merchants_list = MerchantFacade.get_merchants
        items_list = MerchantFacade.get_merchants_items(4)

        visit merchants_path #API call is happening to reach the REAL merchants, so we don't want to use factory bot or faker here
        merchants_list.each do |merchant|
          expect(page).to have_link("#{merchant.name}")
        end

        click_on(merchants_list[3].name)
        merchant = merchants_list[3] #not sure how to test this dynamically

        expect(current_path).to eq("/merchants/4")
        items_list.each do |item|
          expect(page).to have_content("#{item.name}")
          expect(page).to have_content("#{item.description}")
        end
      end
    end
  end
end