require 'rails_helper'

RSpec.describe Item do
  it 'exists and has attributes' do
    item_data = {
                  "id": '4',
                  "type": 'item',
                  "attributes": {
                    "name": 'Bass-o-matic',
                    "description": 'Blends fish for maximum protein',
                    "unit_price": 42.91,
                    "merchant_id": 1
                  }
                }
    
    item = Item.new(item_data)

    expect(item).to be_an Item
    expect(item.id).to eq(4)
    expect(item.name).to eq('Bass-o-matic')
    expect(item.description).to eq('Blends fish for maximum protein')
    expect(item.unit_price).to eq(42.91)
    expect(item.merchant_id).to eq(1)
  end
end
