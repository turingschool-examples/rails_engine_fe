# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Items | Index', :vcr, type: :feature do
  describe 'As a visitor, when I visit /items;' do
    before(:each) { visit items_path }
    items = { 'Item Nemo Facere': 4, 'Item Expedita Aliquam': 5, 'Item Est Consequuntur': 8, 'Item Quo Magnam': 9,
              'Item Quidem Suscipit': 10, 'Item Provident At': 6 }
    it 'I should see a list of items' do
      within('#items') do
        items.each { |item_name, _id| expect(page).to have_content item_name }
      end
    end

    it 'each item should have a link to its show page' do
      within('#items') do
        items.each do |item_name, id|
          click_on item_name

          expect(current_path).to eq item_path(id)

          visit items_path
        end
      end
    end
  end
end
