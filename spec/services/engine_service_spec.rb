require 'rails_helper'

RSpec.describe EngineService, type: :service do
  let(:service) { EngineService.new }

  describe '#merchants' do
    it 'returns an array of data' do
      expect(service.merchants).to be_a Array

      service.merchants.each do |response|
        expect(response).to be_a Hash
        expect(response).to have_key(:id)
        expect(response).to have_key(:type)
        expect(response).to have_key(:attributes)
      end
    end
  end

  describe '#merchant' do
    it 'returns data for one merchant' do
      expect(service.merchant(1)).to be_a Hash

      expect(service.merchant(1)[:id]).to be_a String
      expect(service.merchant(1)[:type]).to be_a String
      expect(service.merchant(1)[:attributes][:name]).to be_a String

    end
  end

  describe '#merchant_items' do
    it 'returns data for items associated with merchant' do
      expect(service.merchant_items(1)).to be_a Array

      service.merchant_items(1).each do |response|
        expect(response).to be_a Hash
        expect(response[:attributes]).to have_key(:name)
        expect(response[:attributes]).to have_key(:description)
        expect(response[:attributes]).to have_key(:unit_price)
      end
    end
  end

  describe '#item' do
    it 'returns data from a single item by id' do
      expect(service.item(20)).to be_a Hash

      expect(service.item(20)[:attributes][:name]).to be_a String
      expect(service.item(20)[:attributes][:description]).to be_a String
      expect(service.item(20)[:attributes][:unit_price]).to be_a Float

      expect(service.item(20)[:id]).to be_a String
      expect(service.item(20)[:id].to_i).to eq(20)
    end
  end

  describe '#find_merchant' do
    it 'passes merchant name to API and returns matching results' do
      expect(service.find_merchant('a')).to be_a Array

      service.find_merchant('a').each do |response|
        expect(response).to be_a Hash
        expect(response).to have_key(:id)
        expect(response).to have_key(:type)
        expect(response).to have_key(:attributes)
      end
    end
  end
end
