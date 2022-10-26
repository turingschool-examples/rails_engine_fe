require 'rails_helper'

RSpec.describe 'merchants index page', type: :feature do
  describe 'As a visitor' do
    describe 'When I visit "/merchants"' do

      it "I should see a list of merchants by name & when I click the merchant's name I should be on page '/merchants/:id' And I should see a list of items that merchant sells." do

        merchants_list = create(:merchant, 6)
        items_list = create(:item, 3)
        visit '/merchants'
        expect(page).to have_link(merchants_list[0].name)
        expect(page).to have_link(merchants_list[1].name)
        expect(page).to have_link(merchants_list[2].name)
        expect(page).to have_link(merchants_list[3].name)
        expect(page).to have_link(merchants_list[4].name)
        expect(page).to have_link(merchants_list[5].name)
        
        click_on(merchants_list[0].name)
        expect(current_path).to be (merchant_path(merchants_list[0])
        expect(page).to have_content("#{merchants_list[0].items[0]}")
        expect(page).to have_content("#{merchants_list[0].items[1]}")
        expect(page).to have_content("#{merchants_list[0].items[2]}")
      end
    end
  end
end