require 'rails_helper'

RSpec.describe 'Item Show Page', type: :feature do
  context 'as a user' do
    describe 'viewable elements' do
      it 'displays the item name' do
        visit item_path(6)

        expect(page).to have_css('h1', text: 'Item Provident At')
      end

      it 'displays the items merchant name' do
        visit item_path(6)

        expect(page).to have_content('Schroeder-Jerde')
      end
    end

    describe 'clickable elements' do
      it 'merchant links redirect to merchant show page' do
        visit item_path(6)

        click_link 'Schroeder-Jerde'
        expect(page).to have_current_path(merchant_path(1))
      end
    end
  end
end
