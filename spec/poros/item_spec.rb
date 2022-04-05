require 'rails_helper'
RSpec.describe Item do
  it 'exists' do
    data = {id:1, attributes:{name: "item_1", description: "some words here", unit_price: 125, merchant_id: 1}}
    item = Item.new(data)
    expect(item).to be_a Item
    expect(item.name).to eq("item_1")
    expect(item.description).to eq("some words here")
    expect(item.unit_price).to eq(125)
  end
end
