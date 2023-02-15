require 'rails_helper'

RSpec.describe Merchant do
  
  it 'exists and has a name and id' do
    merchant_data = {
                      "id": "1",
                      "type": "merchant",
                      "attributes": {
                          "name": "Real-fake Doors"
                      }
                    }
    merch = Merchant.new(merchant_data)

    expect(merch).to be_a Merchant
    expect(merch.id).to eq(1)
    expect(merch.name).to eq("Real-fake Doors")
  end
end