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
  end
end