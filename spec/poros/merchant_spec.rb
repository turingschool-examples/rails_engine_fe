require 'rails_helper'

RSpec.describe Merchant do
  it "exists" do
    data =
      {
      attributes:
      {
        name: 'Test'
        }
      }

    merchant = Merchant.new(data)
    expect(merchant).to be_a Merchant
    expect(merchant.name).to eq(data[:attributes][:name])
  end
end
