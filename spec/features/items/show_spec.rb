require 'rails_helper'
# ber spec/features/items/show_spec.rb
RSpec.describe 'Item show page' do
  describe 'One Item' do
    let(:item) { ItemsFacade.item_by_id(4) }

    it 'has a link to items show page' do
      visit items_path

      click_on item.name

      expect(current_path).to eq(item_path("#{item.id}"))
    end

    it 'has item attributes' do
      visit item_path(4)

      expect(page).to have_content(item.name)
      expect(page).to have_content(item.description)
      expect(page).to have_content(item.unit_price)
    end
  end
end
