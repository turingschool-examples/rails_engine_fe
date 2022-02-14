require 'rails_helper'

RSpec.describe MerchantService do
  it "returns merchant data" do
    VCR.use_cassette('merchant_service') do
      search = MerchantService.merchants_info
      expect(search).to be_a Hash
      expect(search[:data]).to be_an Array

      merchant_data = search[:data].first

      expect(merchant_data[:attributes]).to have_key :name
      expect(merchant_data[:attributes][:name]).to be_a String
    end
  end

  it "returns item data" do
    VCR.use_cassette('test3') do
      search = MerchantService.merchant_items("1")

      expect(search).to be_a Hash
      expect(search[:data]).to be_an Array

      item_data = search[:data].first

      expect(item_data[:attributes]).to have_key :name
      expect(item_data[:attributes][:name]).to be_a String

      expect(item_data[:attributes]).to have_key :unit_price
      expect(item_data[:attributes][:unit_price]).to be_a Float

      expect(item_data[:attributes]).to have_key :description
      expect(item_data[:attributes][:description]).to be_a String

      expect(item_data[:attributes]).to have_key :merchant_id
      expect(item_data[:attributes][:merchant_id]).to be_a Integer
    end
  end
end
