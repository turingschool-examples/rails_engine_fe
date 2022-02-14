require 'rails_helper'
RSpec.describe "the merchant service" do

  it "hit api endpoint for all merchants and returns parsed JSON", :vcr do
    expect(MerchantService.get_all_merchants.class).to eq(Hash)
    merchants = MerchantService.get_all_merchants
    merchants[:data].each do |merchant|
      expect(merchant[:type]).to eq("merchant")
      end
    end

    it "hits api endpoint for one merchants and returns parsed JSON", :vcr do
      expect(MerchantService.get_merchant(1).class).to eq(Hash)
      merchant = MerchantService.get_merchant(1)
      expect(merchant[:data][:id]).to eq("1")
      expect(merchant[:data][:type]).to eq("merchant")
      expect(merchant[:data][:attributes][:name]).to eq("Schroeder-Jerde")
    end

    it "returns a merchant's items", :vcr do
      expect(MerchantService.get_merchant_items(1).class).to eq(Array)
      merchant_items = MerchantService.get_merchant_items(1)
      expect(merchant_items.count).to eq(15)
      merchant_items.each do |item|
        expect(item[:type]).to eq("item")
        expect(item[:attributes][:merchant_id]).to eq(1)
      end
    end

end
