# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Merchants | Show', :vcr, type: :feature do
  describe 'As a visitor, when I visit /merchant/:id;' do
    before(:each) { visit merchant_path(1) }
    items = { 'Item Nemo Facere': 4, 'Item Expedita Aliquam': 5, 'Item Est Consequuntur': 8, 'Item Quo Magnam': 9,
              'Item Quidem Suscipit': 10, 'Item Rerum Magni': 11 }

    it 'I should see a list of items that merchant sells and each item should have a link to its show page' do
      within('#items') do
        items.each do |item_name, id|
          expect(page).to have_link(item_name, href: "/items/#{id}")
        end
      end
    end
  end
end
