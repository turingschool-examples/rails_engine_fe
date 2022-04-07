require "rails_helper"

RSpec.describe "merchant service" do
  it "can get all the merchants" do
    merchants = MerchantService.all_merchants
    expect(merchants[:data]).to be_an Array

    merchants[:data].each do |merchant|
      expect(merchant).to have_key(:id)
      expect(merchant).to have_key(:type)
      expect(merchant).to have_key(:attributes)
      expect(merchant[:attributes]).to have_key(:name)
    end
  end

  it "can get all the items for a merchant" do
    merchant_items = MerchantService.merchant_items(1)

    expect(merchant_items[:data]).to be_an Array
  end
end
