require "rails_helper"

RSpec.describe Merchant do
  it "exists" do
    attrs = {
              id: "999",
              attributes:{
              name: "Sir Shops-A-Lot",
            }}
    merchant = Merchant.new(attrs)

    expect(merchant).to be_a(Merchant)
    expect(merchant.name).to eq("Sir Shops-A-Lot")
    expect(merchant.id).to eq("999")
  end
end
