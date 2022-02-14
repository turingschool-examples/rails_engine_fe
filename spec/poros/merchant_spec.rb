require 'rails_helper'

RSpec.describe Merchant do
  it 'exists' do

    data = {
      id: 1,
      attributes: {
        name: "Frog Store"
      }
    }

    merchant = Merchant.new(data)

    expect(merchant).to be_instance_of(Merchant)
    expect(merchant.id).to eq(1)
    expect(merchant.name).to eq("Frog Store")
  end
end
