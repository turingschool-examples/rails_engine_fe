require 'rails_helper'

RSpec.describe Item do
  it 'is initialized with a hash of item attributes' do
    item_details = { id: "105",
                    :attributes=>{
                     name: "Item Name",
                     description: "Item Description",
                     unit_price: 2.27,
                     merchant_id: 7 }}

    item = Item.new(item_details)

    expect(item.id).to eq(105)
    expect(item.name).to eq("Item Name")
    expect(item.description).to eq("Item Description")
    expect(item.unit_price).to eq(2.27)
    expect(item.merchant_id).to eq(7)
  end
end
