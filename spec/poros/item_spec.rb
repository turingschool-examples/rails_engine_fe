require "rails_helper"

describe "Item PORO" do
  it "Exists and has attributes" do
    @item = Item.new({
      id: 0,
      attributes: {
        name: "Item 1",
        description: "First Item",
        unit_price: 5000,
        merchant_id: 0
      }
      })

      expect(@item.id).to eq(0)
      expect(@item.name).to eq("Item 1")
      expect(@item.description).to eq("First Item")
      expect(@item.unit_price).to eq(5000)
      expect(@item.merchant_id).to eq(0)
  end
end
