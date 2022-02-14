require 'rails_helper'

RSpec.describe ItemFacade do
  describe '::all_items' do
    it 'returns a list of all items in the database' do
      items = ItemFacade.all_items

      expect(items).to be_an Array
      items.each do |item|
        expect(item).to be_a Item
        expect(item.id).to be_an Integer
        expect(item.description).to be_a String
        expect(item.unit_price).to be_a Float
      end
    end
  end

  describe '::find_item' do
    it 'returns one item based on id' do
      item = ItemFacade.find_item(4)

      expect(item.name).to eq("Item Nemo Facere")
    end
  end
end
