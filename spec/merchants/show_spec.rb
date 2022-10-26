# frozen_string_literal: true

RSpec.describe 'Merchants | Show', :vcr, type: :feature do
  describe 'As a visitor, when I visit /merchant/:id;' do
    let!(:visit) { visit merchant_path(1) }

    it 'I should see a list of items that merchant sells' do
      items = { 'Item Nemo Facere': 4, 'Item Expedita Aliquam': 5, 'Item Est Consequuntur': 8, 'Item Quo Magnam': 9,
                'Item Quidem Suscipit': 10, 'Item Rerum Magni': 11 }
      within('#items') do
        items.each { |item_name, _id| expect(page).to have_content item_name }
      end
    end
  end
end
