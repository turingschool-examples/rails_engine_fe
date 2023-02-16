require 'rails_helper'

RSpec.describe 'items index', type: :feature do
  describe 'visiting /items' do
    it 'see list of items by name' do
      visit '/items'

      expect(page).to have_content("Item Nemo Facere")
      expect(page).to have_content("Item Expedita Aliquam")
      expect(page).to have_content("Item Provident At")
      expect(page).to have_content("Item Expedita Fuga")
      expect(page).to have_content("Item Est Consequuntur")
      expect(page).to have_content("Item Quo Magnam")
      expect(page).to have_content("Item Quidem Suscipit")
      expect(page).to have_content("Item Rerum Magni")
    end
  end
end
