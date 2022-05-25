require "rails_helper"

describe "Merchant PORO" do
  it "exists and has attributes" do
    merchant = Merchant.new({
      id: 0,
      attributes: {
        name: "Merchant 1"
      }
      })
      expect(merchant.name).to eq("Merchant 1")
      expect(merchant.id).to eq(0)
  end
end
