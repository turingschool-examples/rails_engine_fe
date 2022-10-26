require 'rails_helper'

RSpec.describe 'Merchant Index Page', type: :feature do
  describe 'As a visitor' do
    describe 'When I visit "/merchants"' vcr: { record: :new_episodes } do
      before :each do
        @merchants = MerchantFacade.all_merchants

        visit merchants_path
      end
      
      it 'I should see a list of merchants by name' do
        
        within("#merchants") do
          expect(page).to have_content(@merchants[0].name)
          expect(page).to have_content(@merchants[1].name)
          expect(page).to have_content(@merchants[2].name)
        end
      end

      it "When I click the merchant's name I should be on page '/merchants/:id'" do
        
        within("#merchants") do
          click_link(@merchants[1].name)
        end
        expect(currrent_path).to eq merchant_path(@merchants[1].id)
      end
      it 'On page "/merchants/:id" I should see a list of items that merchant sells.'
    end
  end
end