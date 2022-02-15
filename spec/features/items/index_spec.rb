require 'rails_helper'

RSpec.describe 'Items Index' do
  describe 'user visits the items index' do
    it 'displays a list of all the items as links by name' do
      visit items_path

      expect(page).to have_content("Item Nemo Facere")
      expect(page).to have_content("Item Id Aut")
    end
  end
end
# expect(page).to have_css('a', count: 100)
