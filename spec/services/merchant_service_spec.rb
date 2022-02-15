require 'rails_helper'

RSpec.describe MerchantService do 

  context "class methods" do 

    it '.merchants' do
      merchants_data = MerchantService.merchants[:data] 
      expect(merchants_data).to be_an Array

      expect(merchants_data.first).to be_a Hash

      first_merchant = merchants_data.first

      expect(first_merchant).to have_key :id
      expect(first_merchant).to have_key :type
      expect(first_merchant).to have_key :attributes
      expect(first_merchant[:attributes]).to have_key :name 
    end

    it ".merchant" do 
      merchant = MerchantService.merchant(50)
      
      expect(merchant).to be_a Hash
      expect(merchant[:data]). to have_key :id
      expect(merchant[:data]). to have_key :attributes
      expect(merchant[:data][:attributes]). to have_key :name
    end

    it '.merchants_items' do 

      items = MerchantService.merchants_items(50)[:data]
      
      first_item = items.first 

      expect(first_item).to be_a Hash
      expect(first_item).to have_key :id
      expect(first_item[:attributes]).to have_key :name
      expect(first_item[:attributes]).to have_key :description
      expect(first_item[:attributes]).to have_key :unit_price
      expect(first_item[:attributes]).to have_key :merchant_id
    end
  end


end
