require 'rails_helper'

RSpec.describe 'Merchant Show Page', type: :feature do
  context 'as a user' do
    describe 'viewable elements' do
      it 'displays the merchant name' do
        visit merchant_path(1)

        expect(page).to have_css('h1', text: 'Schroeder-Jerde')
      end

      it 'displays the merchants items name' do
        visit merchant_path(1)

        expect(page).to have_content('Item Nemo Facere')
        expect(page).to have_css('li', count: 15)
      end
    end
  end
end
