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
      stub_merchant_show

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

    it '.get_merchant_items(merchant_id) returns all items related to the merchant as JSON' do
      stub_merchant_items

      items = MerchantService.get_merchant_items(1)

      expect(items).to have_key :data
      expect(items[:data]).to be_an Array
      expect(items[:data].count).to eq 12

      items[:data].each do |item|
        expect(item).to have_key :id
        expect(item[:id]).to be_a String

        expect(item).to have_key :attributes
        expect(item[:attributes]).to be_a Hash

        expect(item[:attributes]).to have_key :name
        expect(item[:attributes][:name]).to be_a String

        expect(item[:attributes]).to have_key :description
        expect(item[:attributes][:description]).to be_a String

        expect(item[:attributes]).to have_key :unit_price
        expect(item[:attributes][:unit_price]).to be_a Float

        expect(item[:attributes]).to have_key :merchant_id
        expect(item[:attributes][:merchant_id]).to eq 1
      end
    end
  end
end
