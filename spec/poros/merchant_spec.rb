require 'rails_helper'

RSpec.describe Merchant do
  it 'builds a merchant object when data is passed in' do
    data = {"id": "0",
            "attributes": {
                "name": "The Merchant"}}

    @merchant = Merchant.new(data)

    expect(@merchant).to be_an_instance_of(Merchant)
    expect(@merchant.id).to eq(0)
    expect(@merchant.name).to eq("The Merchant")
  end
end
