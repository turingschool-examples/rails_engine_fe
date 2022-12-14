# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Items Index Page', type: :feature do
  describe 'the items index page' do
    it 'shows a list of items by name' do
      visit items_path

      within '#items' do
        expect(page).to have_content('Item Nemo Facere')
        expect(page).to have_content('Item Expedita Aliquam')
      end
    end

    it 'when I click on an item name I am taken to the items show page' do
      visit items_path

      click_on 'Item Nemo Facere'

      expect(current_path).to eq('/items/4')
    end
  end
end
