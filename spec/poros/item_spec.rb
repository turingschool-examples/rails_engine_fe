require 'rails_helper'

RSpec.describe 'item poro' do
  let!(:attributes_merchant) { {id: 1, type: 'model', attributes: {name: 'Bob'}} }
  let!(:merchant) { Merchant.new(attributes_merchant) }
  let!(:attributes) { {id: 1, type: 'item', attributes: {name: 'Steve', description: 'some description', unit_price: 5.49, merchant_id: merchant.id}} }
  let!(:item) { Item.new(attributes) }

  it "exists" do
    expect(item).to be_a(Item)
  end

  it "has attributes" do
    expect(item.name).to eq('Steve')
    expect(item.description).to eq('some description')
    expect(item.unit_price).to eq(5.49)
    expect(item.id).to eq(1)
    expect(item.merchant_id).to eq(1)
  end
end
