# frozen_string_literal: true

require 'rails_helper'

RSpec.describe MerchantFacade do
  before(:each) do
    stub_request(:get, 'http://localhost:3000/api/v1/merchants')
      .to_return(status: 200, body: File.read('spec/fixtures/merchants.json'))
    stub_request(:get, 'http://localhost:3000/api/v1/merchants/1')
      .to_return(status: 200, body: File.read('spec/fixtures/merchant1.json'))
  end

  describe '#all_merchants' do
    it 'returns array of merchant poros' do
      merchants = MerchantFacade.all_merchants

      merchants.each do |merchant|
        expect(merchant).to be_a Merchant
      end
    end
  end

  describe '#merchant()' do
    it 'returns a single merchant poro' do
      merchant = MerchantFacade.merchant(1)

      expect(merchant).to be_a Merchant
      expect(merchant.id).to eq(1)
    end
  end
end
