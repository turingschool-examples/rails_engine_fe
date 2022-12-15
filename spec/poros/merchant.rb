require 'rails_helper'

RSpec.describe Merchant do
  it 'exists' do
    attributes = {
      "id": "1",
      "type": "merchant",
      "attributes": {
        "name": "Schroeder-Jerde" 
      }
    }

    merchant = Merchant.new(attributes)
    expect(merchant).to be_instance_of(Merchant)
    expect(merchant.id).to eq("1")
    expect(merchant.type).to eq("merchant")
    expect(merchant.name).to eq("Schroeder-Jerde")
  end
end