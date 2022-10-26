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
    end
  end
end