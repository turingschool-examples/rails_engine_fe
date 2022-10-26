# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Items | Index', :vcr, type: :feature do
  describe 'As a visitor, when I visit /items;' do
    before(:each) { visit items_path }
    items = { 'Item Nemo Facere': 4, 'Item Expedita Aliquam': 5, 'Item Est Consequuntur': 8, 'Item Quo Magnam': 9,
              'Item Quidem Suscipit': 10, 'Item Provident At': 6 }
    it 'I see a list of items and each item should have a link to its show page' do
      within('#items') do
        items.each do |item_name, id|
          expect(page).to have_link(item_name, href: "/items/#{id}")
        end
      end
    end
  end
end
