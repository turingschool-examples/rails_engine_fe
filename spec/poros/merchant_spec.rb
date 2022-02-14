require 'rails_helper'
RSpec.describe "the merchant poro" do
  it "creates a merchant from id and name" do
    merchant_1 = Merchant.new(1, "Billy's Pet Rocks")
    expect(merchant_1.name).to eq("Billy's Pet Rocks")
    expect(merchant_1.id).to eq(1)
  end
end