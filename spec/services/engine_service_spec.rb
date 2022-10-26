# frozen_string_literal: true

require 'rails_helper'

RSpec.describe EngineService, type: :service do
  describe 'Class Methods', :vcr do
    describe '.merchants' do
      it 'returns an index of all Merchants' do
        response = EngineService.merchants

        expect(response[:data]).to be_an Array
        response[:data].each do |merchant|
          merchant_attributes(merchant)
        end
      end
    end

    describe '.merchant(:id)' do
      it 'returns a single MerchantObject' do
        response = EngineService.merchant(1)

        expect(response[:data]).to be_an Hash
        merchant_attributes(response[:data])
      end
    end

    describe '.merchant_items(:id)' do
      it 'returns the merchants items' do
        response = EngineService.merchant_items(1)

        expect(response[:data]).to be_an Array
        response[:data].each do |item|
          item_attributes(item)
        end
      end
    end

    describe '.items' do
      it 'returns an index of all Items' do
        response = EngineService.items

        expect(response[:data]).to be_an Array
        response[:data].each do |item|
          item_attributes(item)
        end
      end
    end

    describe '.item(:id)' do
      it 'returns a single ItemObject' do
        response = EngineService.item(4)

        expect(response[:data]).to be_an Hash
        item_attributes(response[:data])
      end
    end
  end
end

def merchant_attributes(merchant)
  expect(merchant[:id]).to be_an String
  expect(merchant[:type]).to eq 'merchant'
  expect(merchant[:attributes]).to be_an Hash
  expect(merchant.dig(:attributes, :name)).to be_an String
end

def item_attributes(item)
  expect(item[:id]).to be_an String
  expect(item[:type]).to eq 'item'
  expect(item[:attributes]).to be_an Hash
  expect(item.dig(:attributes, :name)).to be_an String
  expect(item.dig(:attributes, :description)).to be_an String
  expect(item.dig(:attributes, :unit_price)).to be_an Float
end
