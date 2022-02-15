require 'rails_helper'

RSpec.describe 'Merchants Index', type: :feature do
  describe 'as a user' do
    describe 'viewable elements' do
      it 'displays merchant header' do
        visit merchants_path

        expect(page).to have_css('h1', text: 'Merchants')
      end

      it 'displays all the merchants names' do
        visit merchants_path

        expect(page).to have_css('li', count: 100)
      end
    end

    describe 'clickable elements' do
      it 'merchant links redirect to merchants show page' do
        visit merchants_path

        expect(page).to have_css('a', count: 100)

        click_link 'Schroeder-Jerde'
        expect(page).to have_current_path(merchant_path(1))
      end
    end
  end
end
