require 'rails_helper'

RSpec.describe Item do
  merchant1 = Merchant.new(name: "Cats R Us")
  let(:data) do
    { id: 1,
      name: 'Cat Scratcher 2000',
      description: 'cat stress reliever',
      unit_price: 26.32,
      merchant_id: "#{merchant1.id}"}
  end

  let(:item) { Item.new(data) }

  it 'exists' do
    expect(item).to be_a(Item)
  end

  it 'has attributes' do
    expect(item.id).to eq(1)
    expect(item.name).to eq('Cat Scratcher 2000')
    expect(item.description).to eq('cat stress reliever')
    expect(item.unit_price).to eq(26.32)
    expect(item.merchant_id).to eq("#{merchant1.id}")
  end
end
