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
  end
end

def merchant_attributes(merchant)
  expect(merchant[:id]).to be_an String
  expect(merchant[:type]).to eq 'merchant'
  expect(merchant[:attributes]).to be_an Hash
  expect(merchant.dig(:attributes, :name)).to be_an String
end
