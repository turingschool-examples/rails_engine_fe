# frozen_string_literal: true

require 'rails_helper'

RSpec.describe MerchantObject, :vcr, type: :object do
  describe 'Instantiation' do
    it 'can be instantiated' do
      merchant = EngineService.merchant(1)
      expect(MerchantObject.new(merchant[:data])).to be_an_instance_of described_class
    end
  end

  describe 'Attributes' do
    it 'can return required attributes' do
      merchant = EngineService.merchant(1)
      merchant_attributes(MerchantObject.new(merchant[:data]))
    end
  end
end

def merchant_attributes(merchant)
  expect(merchant.id).to be_an Integer
  expect(merchant.type).to eq 'merchant'
  expect(merchant.name).to be_an String
end
