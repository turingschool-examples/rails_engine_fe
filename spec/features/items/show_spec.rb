require 'rails_helper'

RSpec.describe 'Item Show Page' do
  describe 'when I visit an item show page' do
    it 'shows the details for that item' do
      item = ItemFacade.all_items.first
      visit "/items/#{item.id}"
      expect(page).to have_content("Name: #{item.name}")
      expect(page).to have_content("Description: #{item.description}")
      expect(page).to have_content("Price: $#{item.unit_price}")
    end
  end
end
