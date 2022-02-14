require 'rails_helper'

RSpec.describe MerchantService do
  context 'class methods' do
    context '.all_merchants' do
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
  end
end
