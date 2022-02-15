require 'rails_helper'

RSpec.describe Item do
  let(:item) { Item.new({id: 4, attributes: {name: 'Thing', description: 'It is a thing', unit_price: 12.99}}) }

  it 'exists' do
      expect(item).to be_a Item
  end

  it 'has attributes' do
    expect(item.name).to eq('Thing')
    expect(item.description).to eq('It is a thing')
    expect(item.unit_price).to eq(12.99)
    expect(item.id).to eq(4)
  end
end
