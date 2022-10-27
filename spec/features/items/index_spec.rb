require 'rails_helper'

RSpec.describe "Items index" do
  describe "GET /index" do
    it 'I should see a list of item names', :vcr do
      visit items_path
      expect(page).to have_link("Item Nemo Facere")
    end
    it 'When I click on a name I should be taken to a item show page', :vcr do
      visit items_path
      click_link "Item Nemo Facere"
      expect(current_path).to eq(item_path(4))
    end
  end
end