require 'rails_helper'

RSpec.describe MerchantService do
  context 'class methods' do
    context '::all_merchants' do
      it 'returns all merchant data' do
        response = MerchantService.all_merchants
        expect(response).to be_a Array

        expect(response.first).to have_key :attributes
        expect(response.first).to be_a Hash

        expect(response.first).to have_key :id
        expect(response.first[:id]).to be_a String

        expect(response.first[:attributes]).to have_key :name
        expect(response.first[:attributes][:name]).to be_a String
      end
    end

    context '::merchant_items(id)' do
      it 'returns the item data for a merchant' do
        response = MerchantService.merchant_items(1)
        expect(response).to be_an Array

        expect(response.first).to have_key :attributes
        expect(response.first).to be_a Hash

        expect(response.first).to have_key :id
        expect(response.first[:id]).to be_a String

        expect(response.first[:attributes]).to have_key :name
        expect(response.first[:attributes][:name]).to be_a String

        expect(response.first[:attributes]).to have_key :description
        expect(response.first[:attributes][:description]).to be_a String

        expect(response.first[:attributes]).to have_key :unit_price
        expect(response.first[:attributes][:unit_price]).to be_an Float

        expect(response.first[:attributes]).to have_key :merchant_id
        expect(response.first[:attributes][:merchant_id]).to be_an Integer
      end
    end
  end
end
