require 'rails_helper'

describe MerchantService do
  context "class methods" do
    context "#get_merchants" do
      it "returns merchant data", :vcr do
        json_merchant_data = MerchantService.get_merchants

        expect(json_merchant_data).to be_a Hash
        expect(json_merchant_data[:data]).to be_an Array
        merchant = json_merchant_data[:data].first

        expect(merchant).to have_key :id
        expect(merchant[:id]).to be_a(String)

        expect(merchant).to have_key :type
        expect(merchant[:type]).to eq("merchant")

        expect(merchant).to have_key :attributes
        expect(merchant[:attributes][:name]).to be_a(String)
      end
    end

    context "#get_merchants_items(id)" do
      it "returns a merchants items & data about those items", :vcr do
        json_merchant_items = MerchantService.get_merchants_items(1)

        expect(json_merchant_items).to be_a Hash
        expect(json_merchant_items[:data]).to be_an Array
        item = json_merchant_items[:data].first

        expect(item).to have_key :id
        expect(item[:id]).to be_a(String)

        expect(item).to have_key :attributes
        expect(item[:attributes][:name]).to be_a(String)

        expect(item[:attributes]).to have_key :description
        expect(item[:attributes][:description]).to be_a(String)

        expect(item[:attributes]).to have_key :unit_price
        expect(item[:attributes][:unit_price]).to be_a(Float)

        expect(item[:attributes]).to have_key :merchant_id
        expect(item[:attributes][:merchant_id]).to be_a(Integer)
      end
    end
  end
end