require 'rails_helper'

RSpec.describe Item do 
  it "exists" do 

    attributes = {
      id: 1, 
      name: "Thingamabob",
      description: "A Fork.", 
      unit_price: 9,
      merchant_id: 1
    }

    item = Item.new(attributes)

    expect(item).to be_a(Item)
    expect(item.id).to eq(1)
    expect(item.name).to eq("Thingamabob")
    expect(item.description).to eq("A Fork.")
    expect(item.merchant_id).to eq(1)
  end
end
