require 'rails_helper'

RSpec.describe ItemFacade, type: :facade do
  context 'class methods' do
    describe '::items_list' do
      it 'returns array of Merchant objects' do
        items = ItemFacade.items_list

        expect(items).to be_a(Array)
        expect(items.first).to be_a(Item)
      end
    end

    describe '::item' do
      it 'returns a specific item' do
        item = ItemFacade.item(6)

        expect(item).to be_a(Item)
        expect(item.id.to_i).to eq(6)
        expect(item.name).to eq('Item Provident At')
      end
    end

    describe '::item_merch' do
      it 'returns a merchants items objects' do
        merchant = ItemFacade.item_merch(6)

        expect(merchant).to be_a(Merchant)
        expect(merchant.name).to eq('Schroeder-Jerde')
      end
    end
  end
end
