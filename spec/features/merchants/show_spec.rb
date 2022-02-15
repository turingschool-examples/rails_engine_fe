require 'rails_helper'

RSpec.describe 'Merchant Show Page', type: :feature do
  context 'As a user' do
    context 'When I visit a merchant show page' do
      before(:each) do
        visit '/merchants/1'
      end

      scenario 'I see a list of items for that merchant and they are links to the item show page' do
        within '#item-1' do
          first(:link).click
        end

        expect(page).to have_content('Item Name:')
        expect(page).to have_content('Item Description:')
        expect(page).to have_content('Item Unit Price:')
      end
    end
  end
end
