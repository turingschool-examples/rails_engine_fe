# frozen_string_literal: true

require 'rails_helper'

RSpec.describe EngineFacade, type: :facade do
  describe 'Class Methods', :vcr do
    describe '.create_merchants' do
      it 'creates an array of Merchant objects' do
        merchants = EngineFacade.create_merchants
        expect(merchants).to be_an Array
        merchants.each do |merchant|
          merchant_attributes(merchant)
        end
      end
    end

    describe '.create_merchant' do
      it 'returns a Merchant object' do
        merchant = EngineFacade.create_merchant(1)
        merchant_attributes(merchant)
      end
    end
  end
end

def merchant_attributes(merchant)
  expect(merchant).to be_an_instance_of MerchantObject
  expect(merchant.id).to be_an Integer
  expect(merchant.type).to eq 'merchant'
  expect(merchant.name).to be_an String
end
