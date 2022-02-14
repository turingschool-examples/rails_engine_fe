require 'rails_helper'

RSpec.describe 'item show page' do
  context 'happy path: item exitst' do
    let!(:item) { RailsEngineFacade.get_item("4") }
    it "shows item attributes" do
      visit "/items/#{item.id}"

      expect(page).to have_content(item.name)
      expect(page).to have_content(item.description)
      expect(page).to have_content(item.unit_price)
    end
  end

  context 'sad path: item does nto exist' do
    it "shows error message on page" do
      visit "/items/#{item.id}"

      expect(page).to have_content("Item not found")
    end
  end
end
