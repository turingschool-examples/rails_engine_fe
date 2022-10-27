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
  end
end