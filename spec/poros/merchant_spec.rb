require 'rails_helper'
RSpec.describe Merchant do
  it 'exists with attributes' do
    merchant_data = {
      "id": '1',
      "type": 'merchant',
      "attributes": {
        "name": 'Schroeder-Jerde'
      }
    }
    merchant_poro = Merchant.new(merchant_data)
    expect(merchant_poro).to be_a Merchant
    expect(merchant_poro.name).to eq(merchant_data[:attributes][:name])
  end
end
