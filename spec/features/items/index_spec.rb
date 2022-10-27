require 'rails_helper'

RSpec.describe '/items' do
  describe 'when I visit the items index' do
    let(:items) { ItemsFacade.items }
    before { visit '/items' }

    it 'has a title' do
      expect(page).to have_content("All Items")
    end

    it 'displays all items in the db' do
      item_1 = items.sample
      item_2 = items.sample

      expect(page).to have_content(item_1.name)
      expect(page).to have_content(item_2.name)
    end

    it 'links to each items show page' do
      item = items.sample

      click_on item.name

      expect(current_path).to eq(item_path(item.id))
      expect(page).to have_content(item.name)
      expect(page).to have_content(item.description)
      expect(page).to have_content(item.unit_price)
    end
  end
end