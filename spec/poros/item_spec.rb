require 'rails_helper'

RSpec.describe Item do
  it 'has attributes' do
    data = {
      id: 1,
      attributes: {
        name: 'Wine Glass',
        description: 'Curvy red wine glass.',
        unit_price: 9,
        merchant_id: 67
      }
    }

    item = Item.new(data)

    expect(item).to be_a(Item)
    expect(item.id).to eq(1)
    expect(item.name).to eq('Wine Glass')
    expect(item.description).to eq('Curvy red wine glass.')
    expect(item.unit_price).to eq(9)
    expect(item.merchant_id).to eq(67)
  end
end