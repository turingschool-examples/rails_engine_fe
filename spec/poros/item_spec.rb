require 'rails_helper'

RSpec.describe Item do

  before(:each) do 
    @item_data = {id: "1", attributes: {name: "Buffalo Trace", description: "Delicious and cheap whiskey", unit_price: 19.99, merchant_id: 5}}
  end

  it 'will create an Item object with all attributes' do 
    item = Item.new(@item_data)

    expect(item.id).to eq("1")
    expect(item.name).to eq("Buffalo Trace")
    expect(item.description).to eq("Delicious and cheap whiskey")
    expect(item.unit_price).to eq(19.99)
    expect(item.merchant_id).to eq(5)
  end
end