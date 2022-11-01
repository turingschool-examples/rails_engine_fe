require 'rails_helper'

RSpec.describe 'Merchant Index Page', type: :feature do
  describe 'As a visitor' do
    describe 'When I visit "/merchants"', vcr: { record: :new_episodes } do
      before :each do
        @merchant_items = MerchantFacade.merchant_items(3)
        @merchant = MerchantFacade.one_merchant(3)
        visit merchant_path(@merchant.id)
      end

      it 'On page "/merchants/:id" I should see a list of items that merchant sells.' do

        within("#merchant-#{@merchant.id}-items") do
          @merchant_items.each do |item|
            expect(page).to have_content(item.name)
          end
        end
      end

      it 'Each item links to that Items show page', vcr: { record: :new_episodes } do

        within("#merchant-#{@merchant.id}-items") do
          click_link (@merchant_items[0].name)
        end

        expect(current_path).to eq item_path(@merchant_items[0].id)
      end
    end
  end
end