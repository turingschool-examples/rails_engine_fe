require "rails_helper"

RSpec.describe Merchant do
  it "exists" do
    attrs = {
              name: "Sir Shops-A-Lot",
              id: "999"
            }
    merchant = Merchant.new(attrs)

    expect(merchant).to be_a(Merchant)
    expect(merchant.name).to eq("Sir Shops-A-Lot")
    expect(merchant.id).to eq(999)
  end
end
