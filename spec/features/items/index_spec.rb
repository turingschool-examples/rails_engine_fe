require 'rails_helper'
# ber spec/features/items/index_spec.rb
# save_and_open_page
RSpec.describe 'Items index page' do
  describe 'All Items' do
    before :each do
      visit items_path
    end

    let(:item) { ItemsFacade.all_items[0..4] }

    it 'lists all items by name' do
      expect(page).to have_content(item[0].name)

      expect(page).to have_link(item[0].name)

      click_on item[0].name

      expect(current_path).to eq(item_path("#{item[0].id}"))
    end

    it 'has a link to items show page' do
      expect(page).to have_link(item[0].name)
      expect(page).to have_link(item[1].name)
      expect(page).to have_link(item[2].name)
      expect(page).to have_link(item[3].name)
      expect(page).to have_link(item[4].name)

      click_on item[0].name

      expect(current_path).to eq("/items/#{item[0].id}")

      expect(page).to have_content(item[0].name)

      expect(page).to_not have_content(item[1].name)
      expect(page).to_not have_content(item[2].name)
      expect(page).to_not have_content(item[3].name)
      expect(page).to_not have_content(item[4].name)
    end
  end
end
