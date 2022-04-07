require "rails_helper"

RSpec.describe "item poros" do
  it "has attributes" do
    data = {
        id: 1,
        attributes: {
          name: "Name",
          description: "Item description",
          unit_price: 2.30,
          merchant_id: 1
        }
    }

    item = Item.new(data)
    expect(item).to be_an_instance_of Item
  end
end
