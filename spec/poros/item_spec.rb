require 'rails_helper'

RSpec.describe Item do
  it "exists" do
    data =
      {
      attributes:
      {
        name: 'Test',
        description: 'Testing',
        merchant_id: "1",
        unit_price: 4.50
        }
      }

    merchant = Item.new(data)
    expect(merchant).to be_a Item
    expect(merchant.description).to eq(data[:attributes][:description])
    expect(merchant.unit_price).to eq(data[:attributes][:unit_price])
    expect(merchant.merchant_id).to eq(data[:attributes][:merchant_id])
  end
end
