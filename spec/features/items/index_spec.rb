require 'rails_helper'

RSpec.describe 'Items Index', type: :feature do
  describe 'as a user' do
    describe 'viewable elements' do
      it 'displays item header' do
        visit items_path

        expect(page).to have_css('h1', text: 'Items')
      end

      it 'displays all the items names' do
        visit items_path

        expect(page).to have_css('li', count: 2483)
      end
    end

    describe 'clickable elements' do
      it 'item links redirect to item show page' do
        visit items_path

        expect(page).to have_css('a', count: 2483)

        click_link 'Item Provident At'
        expect(page).to have_current_path(item_path(6))
      end
    end
  end
end
