require 'rails_helper'

RSpec.describe 'Item Index' do
  VCR.use_cassette('item_index') do
    it 'Item Index page shows all items' do
      visit items_path
      expect(current_path).to eq(items_path)

      expect(page).to have_content("All Items")
      expect(page).to have_link("Item Nemo Facere")
    end

    it 'Links to Item Show Page' do
      visit items_path
      expect(current_path).to eq(items_path)

      click_on "Item Nemo Facere"
      expect(current_path).to eq(item_path("4"))
    end
  end
end
