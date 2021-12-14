require 'rails_helper'
# ber spec/facades/items_facade_spec.rb
RSpec.describe 'Items Facade', :vcr do
  it 'gets all items' do
    all_items = ItemsFacade.all_items

    expect(all_items).to be_an Array
    expect(all_items.first).to be_a Item
    expect(all_items.first.name).to be_a String
    expect(all_items.first.id).to be_a String
  end

  it 'gets one item' do
    item = ItemsFacade.item_by_id(4)

    expect(item).to be_a Item

    expect(item.name).to be_a String
    expect(item.name).to eq("Item Nemo Facere")

    expect(item.description).to be_a String
    expect(item.description).to eq("Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.")

    expect(item.unit_price).to be_a Float
    expect(item.unit_price).to eq(42.91)

    expect(item.id).to be_a String
    expect(item.id).to eq("4")
  end
end
