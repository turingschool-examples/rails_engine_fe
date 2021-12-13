require 'rails_helper'

RSpec.describe 'Merchants API Service' do
  describe 'happy path' do
    it 'can get a list of merchants' do
      response = MerchantService.get_merchants
      expect(response).to be_a Hash
      expect(response[:data]).to be_a Array
      
      first_response = response[:data].first

      expect(first_response).to have_key :id
      expect(first_response[:id]).to be_a String

      expect(first_response).to have_key :type
      expect(first_response[:type]).to be_a String

      expect(first_response).to have_key :attributes
      expect(first_response[:attributes]).to be_a Hash

      expect(first_response[:attributes]).to have_key :name
      expect(first_response[:attributes][:name]).to be_a String
    end

    it 'can get one merchant by id' do
      response = MerchantService.get_one_merchant(4)

      expect(response[:data]).to be_a Hash
      expect(response[:data][:type]).to be_a String
    end
  end
end
