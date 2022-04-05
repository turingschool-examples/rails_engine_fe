require 'rails_helper'

RSpec.describe ItemService do
  context '#get_items' do
    it "returns items data" do
      items = ItemService.get_items

      expect(items).to be_a Array
      expect(items.length).to eq 2483

      expect(items.first).to be_a Item
      expect(items.last).to be_a Item
    end
  end

  context '#get_item' do
    it "returns a single item" do
      item = ItemService.get_item(10)

      expect(item).to be_a Item
      expect(item.name).to eq("Item Quidem Suscipit")
    end
  end
end
