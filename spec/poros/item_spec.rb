require 'rails_helper'

RSpec.describe Item do
  it 'exists' do

    data = {
      id: 1,
      attributes: {
        name: "Frog Hat",
        description: "Hat that looks like a froggy.",
        unit_price: 400,
        merchant_id: 1
      }
    }

    item = Item.new(data)

    expect(item).to be_instance_of(Item)
    expect(item.id).to eq(1)
    expect(item.name).to eq("Frog Hat")
    expect(item.description).to eq("Hat that looks like a froggy.")
    expect(item.unit_price).to eq(400)
    expect(item.merchant_id).to eq(1)
  end
end 
