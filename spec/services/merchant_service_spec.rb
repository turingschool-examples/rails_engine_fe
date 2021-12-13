require 'rails_helper'

RSpec.describe 'Merchant service' do
  describe 'happy path' do
    it 'can get all merchant data', :vcr do
      response = MerchantService.merchants
      

      
      expect(response).to be_an Array
      expect(response.first).to be_a Hash

      first_merchant_data = response.first

      expect(first_merchant_data).to have_key :id
      expect(first_merchant_data[:id]).to be_a String

      expect(first_merchant_data).to have_key :attributes
      expect(first_merchant_data[:attributes][:name]).to be_a String
    end
  end

  describe 'happy path' do
    it "can get all merchant's items", :vcr do
      response = MerchantService.merchant_items("1")
      
      expect(response).to be_an Array
      expect(response.first).to be_a Hash

      first_item_data = response.first

      expect(first_item_data).to have_key :id
      expect(first_item_data[:id]).to be_a String

      expect(first_item_data).to have_key :attributes
      expect(first_item_data[:attributes][:name]).to be_a String
    end
  end

  describe 'happy path' do
    it "can search for merchants", :vcr do
      response = MerchantService.search_for_merchants('sOn')[:data]

      expect(response).to be_an Array
      expect(response.first).to be_a Hash

      first_merchant_data = response.first

      expect(first_merchant_data).to have_key :id
      expect(first_merchant_data[:id]).to be_a String

      expect(first_merchant_data).to have_key :attributes
      expect(first_merchant_data[:attributes][:name]).to be_a String
    end
  end
end