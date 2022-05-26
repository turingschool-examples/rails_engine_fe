require 'rails_helper'

RSpec.describe MerchantService do
  context 'class methods' do
    it '.get_all_merchants returns all merchants as JSON' do
      stub_merchant_index

      merchants = MerchantService.get_all_merchants

      expect(merchants).to have_key :data
      expect(merchants[:data]).to be_an Array
      expect(merchants[:data].count).to eq 15
      expect(merchants[:data]).to be_all Hash

      merchants[:data].each do |merchant|
        expect(merchant).to have_key :id
        expect(merchant[:id]).to be_a String

        expect(merchant).to have_key :attributes
        expect(merchant[:attributes]).to be_a Hash
        
        expect(merchant[:attributes]).to have_key :name
        expect(merchant[:attributes][:name]).to be_a String
      end
    end

    it '.get_merchant(merchant_id) returns a single merchant as JSON' do
      merchant = MerchantService.get_merchant(1)

      expect(merchant).to have_key :data
      expect(merchant[:data]).to be_a Hash

      expect(merchant[:data]).to have_key :id
      expect(merchant[:data][:id]).to eq '1'

      expect(merchant[:data]).to have_key :attributes
      expect(merchant[:data][:attributes]).to be_a Hash

      expect(merchant[:data][:attributes]).to have_key :name
      expect(merchant[:data][:attributes][:name]).to eq('Schroeder-Jerde')
    end
  end
end
