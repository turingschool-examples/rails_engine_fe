require 'rails_helper'

RSpec.describe 'Items Index Page' do
  before :each do
    visit "/items"
  end

  describe 'when I visit the Items Index Page' do
    it 'has a header that says all items' do
      visit '/items'
      expect(page).to have_content("All Items")
    end

    it 'displays a list of all item names' do
      expect(page.status_code).to eq(200)
    end

    it 'has a list of item names that are clickable and lead to their own show page' do
      item = ItemFacade.all_items.first

      visit '/items'

      expect(page.status_code).to eq 200

      click_link "Item Nemo Facere"
      expect(current_path).to eq("/items/#{item.id}")
    end
  end
end
