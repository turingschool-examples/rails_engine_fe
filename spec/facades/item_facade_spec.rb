require 'rails_helper'

RSpec.describe ItemFacade do
  describe 'Item calls' do
    it 'all_items' do
      items = ItemFacade.all_items

      expect(items).to be_a(Array)

      items.each do |item|
        expect(item).to be_instance_of(Item)
      end
      expect(items[0].name).to eq("Item Nemo Facere")
      expect(items[1].name).to eq("Item Expedita Aliquam")
    end

    it 'one_item' do
      item = ItemFacade.one_item(179)

      expect(item).to be_instance_of(Item)

      expect(item.id).to eq("179")
      expect(item.name).to eq("Item Qui Veritatis")
      expect(item.description).to eq("Totam labore quia harum dicta eum consequatur qui. Corporis inventore consequatur. Illum facilis tempora nihil placeat rerum sint est. Placeat ut aut. Eligendi perspiciatis unde eum sapiente velit.")
      expect(item.unit_price).to eq(906.17)
    end
  end
end