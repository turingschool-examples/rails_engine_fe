require 'rails_helper'

RSpec.describe Cast do
  it 'has info about a cast member' do
    data = {
          "id": "1",
          "type": "merchant",
          "attributes": {
            "name": "Schroeder-Jerde"
          }
        }

    merchant = Merchant.new(data)
    expect(merchant).to be_instance_of(Merchant)
    expect(merchant.id).to eq(1)
    expect(merchant.name).to eq('Schroeder-Jerde')
  end