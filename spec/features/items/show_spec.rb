# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Item Show Page', type: :feature do
  describe 'the item show page' do
    it 'shows the item name, description, and unit price' do
      visit item_path(4)

      expect(page).to have_content('Item Nemo Facere')

      within '#item-info' do
        expect(page).to have_content('Description: Sunt eum id eius magni consequuntur delectus veritatis.')
        expect(page).to have_content('Unit Price: $42.91')
      end
    end
  end
end
