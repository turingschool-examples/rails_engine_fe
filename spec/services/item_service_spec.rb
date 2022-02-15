require 'rails_helper'

RSpec.describe ItemService do
  context 'class methods' do
    context '::all_items' do
      it 'returns all item data' do
        response = ItemService.all_items
        expect(response).to be_a Array

        expect(response.first).to have_key :attributes
        expect(response.first).to be_a Hash

        expect(response.first).to have_key :id
        expect(response.first[:id]).to be_a String

        expect(response.first[:attributes]).to have_key :name
        expect(response.first[:attributes][:name]).to be_a String

        expect(response.first[:attributes]).to have_key :description
        expect(response.first[:attributes][:description]).to be_a String

        expect(response.first[:attributes]).to have_key :unit_price
        expect(response.first[:attributes][:unit_price]).to be_a Float

        expect(response.first[:attributes]).to have_key :merchant_id
        expect(response.first[:attributes][:merchant_id]).to be_a Integer
      end
    end
  end
end 
