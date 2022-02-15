require 'rails_helper'

RSpec.describe Item do
  it 'exists' do
    data = {:attributes => {name: 'Mine', description: "a cool thing", unit_price: 1000.0, merchant_id: 1}, id: "1"}
    item = Item.new(data)
    expect(item).to be_an_instance_of(Item)
  end

  it 'has attributes' do
    data = {:attributes => {name: 'Mine', description: "a cool thing", unit_price: 1000.0, merchant_id: 1}, id: "1"}
    item = Item.new(data)
    expect(item.name).to eq('Mine')
    expect(item.id).to eq("1")
    expect(item.description).to eq('a cool thing')
    expect(item.unit_price).to eq(1000.0)
    expect(item.merchant_id).to eq(1)
  end 
end
