require 'rails_helper'

RSpec.describe Item do
  it 'transforms a JSON into an Item object' do
    data = {
        id: '1',
        attributes: {
          name: 'Item name',
          description: 'Item description',
          unit_price: 42.99,
          merchant_id: 4
        }
      }
    
    new_item = Item.new(data)
    expect(new_item.name).to eq('Item name')
    expect(new_item.id).to eq(1)
    expect(new_item.description).to eq('Item description')
    expect(new_item.merchant_id).to eq(4)
  end
end