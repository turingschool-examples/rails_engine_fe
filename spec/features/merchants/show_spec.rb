# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Merchant Show Page', type: :feature do
  describe 'the merchant show page' do
    it 'lists all items the merchant sells' do
      visit merchant_path(1)

      expect(page).to have_content('Schroeder-Jerde')
      expect(page).to_not have_content('Kozey Group')

      within '#items' do
        expect(page).to have_content('Item Nemo Facere')
        expect(page).to have_content('Item Expedita Aliquam')
        click_link 'Item Nemo Facere'
      end

      expect(current_path).to eq(item_path(4))
    end
  end
end
