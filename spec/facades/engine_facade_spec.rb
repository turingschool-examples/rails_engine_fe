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

    describe '.merchant_items(:id)' do
      it 'returns the merchants items' do
        items = EngineFacade.merchant_items(1)
        expect(items).to be_an Array
        items.each do |item|
          item_attributes(item)
        end
      end
    end

    describe '.create_merchant' do
      it 'returns a Merchant object' do
        merchant = EngineFacade.create_merchant(1)
        merchant_attributes(merchant)
      end
    end

    describe '.create_item(:id)' do
      it 'returns a Item object' do
        item = EngineFacade.create_item(4)
        item_attributes(item)
      end
    end

    describe '.create_items' do
      it 'creates an array of Merchant objects' do
        items = EngineFacade.create_items
        expect(items).to be_an Array
        items.each do |item|
          item_attributes(item)
        end
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

def item_attributes(item)
  expect(item).to be_an_instance_of ItemObject
  expect(item.id).to be_an Integer
  expect(item.type).to eq 'item'
  expect(item.name).to be_an String
  expect(item.description).to be_an String
  expect(item.unit_price).to be_an Float
end
