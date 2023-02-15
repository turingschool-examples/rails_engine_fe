require 'rails_helper'

RSpec.describe StoreService do
  before(:each) do
  stub_request(:get, 'http://localhost:3000/api/v1/merchants')
    .to_return(status: 200, body: File.read('spec/fixtures/merchants.json'))
  stub_request(:get, 'http://localhost:3000/api/v1/merchants/1')
    .to_return(status: 200, body: File.read('spec/fixtures/merchant1.json'))
  stub_request(:get, 'http://localhost:3000/api/v1/merchants/1/items')
    .to_return(status: 200, body: File.read('spec/fixtures/merchant1_items.json'))
  stub_request(:get, 'http://localhost:3000/api/v1/items')
    .to_return(status: 200, body: File.read('spec/fixtures/items.json'))
  stub_request(:get, 'http://localhost:3000/api/v1/items/4')
    .to_return(status: 200, body: File.read('spec/fixtures/item4.json'))

  end

  describe '#merchants' do
    it 'returns a list of merchants with id, type, and attribute of name' do
      response = StoreService.merchants

      expect(response).to be_a Hash
      expect(response[:data]).to be_a Array
      response[:data].each do |merchant|
        expect(merchant.keys.sort).to eq([:id, :type, :attributes].sort)
        expect(merchant[:id]).to be_a String
        expect(merchant[:id].to_i).to be_a Integer
        expect(merchant[:type]).to eq('merchant')
        expect(merchant[:attributes].keys).to eq([:name])
        expect(merchant[:attributes][:name]).to be_a String
      end
    end
  end

  describe '#merchant()' do
    it 'returns a singe merchant' do
      response = StoreService.merchant(1)

      expect(response).to be_a Hash
      expect(response[:data]).to be_a Hash
      expect(response[:data].keys.sort).to eq([:id, :type, :attributes].sort)
      expect(response[:data][:id]).to eq("1")
      expect(response[:data][:type]).to eq("merchant")
      expect(response[:data][:attributes]).to be_a Hash
      expect(response[:data][:attributes][:name]).to be_a String
    end
  end

  describe '#merchant_items()' do
    it 'returns a list of items for the given merchant' do
      response = StoreService.merchant_items(1)

      expect(response).to be_a Hash
      expect(response[:data]).to be_a Array
      response[:data].each do |item|
        expect(item).to be_a Hash
        expect(item.keys.sort).to eq([:id, :type, :attributes].sort)
        expect(item[:id]).to be_a String
        expect(item[:id].to_i).to be_a Integer
        expect(item[:type]).to eq('item')
        expect(item[:attributes].keys.sort).to eq([:name, :description, :unit_price, :merchant_id].sort)
        expect(item[:attributes][:name]).to be_a String
        expect(item[:attributes][:description]).to be_a String
        expect(item[:attributes][:unit_price]).to be_a Float
        expect(item[:attributes][:merchant_id]).to eq(1)
      end
    end
  end

  describe '#all_items' do
    it 'returns a list of all items' do
      response = StoreService.all_items

      expect(response).to be_a Hash
      expect(response[:data]).to be_a Array
      response[:data].each do |item|
        expect(item).to be_a Hash
        expect(item.keys.sort).to eq([:id, :type, :attributes].sort)
        expect(item[:id]).to be_a String
        expect(item[:id].to_i).to be_a Integer
        expect(item[:type]).to eq('item')
        expect(item[:attributes].keys.sort).to eq([:name, :description, :unit_price, :merchant_id].sort)
        expect(item[:attributes][:name]).to be_a String
        expect(item[:attributes][:description]).to be_a String
        expect(item[:attributes][:unit_price]).to be_a Float
        expect(item[:attributes][:merchant_id]).to be_a Integer
      end
    end
  end

  describe '#item()' do
    it 'returns a single item' do
      response = StoreService.item(4)

      expect(response).to be_a Hash
      expect(response[:data]).to be_a Hash
      expect(response[:data].keys.sort).to eq([:id, :type, :attributes].sort)
      expect(response[:data][:id]).to be_a String
      expect(response[:data][:id].to_i).to eq(4)
      expect(response[:data][:type]).to eq('item')
      expect(response[:data][:attributes].keys.sort).to eq([:name, :description, :unit_price, :merchant_id].sort)
      expect(response[:data][:attributes][:name]).to be_a String
      expect(response[:data][:attributes][:description]).to be_a String
      expect(response[:data][:attributes][:unit_price]).to be_a Float
      expect(response[:data][:attributes][:merchant_id]).to be_a Integer
    end
  end
end