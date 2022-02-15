require 'rails_helper'

RSpec.describe MerchantsFacade do
  let(:facade) { MerchantsFacade.new }

  it 'is initialized with an EngineService' do
    expect(facade.service).to be_instance_of EngineService
  end

  describe '#merchants' do
    it 'creates poros of API merchant data' do
      facade.merchants.each do |merchant|
        expect(merchant).to be_a Merchant
      end
    end
  end

  describe '#merchant' do
    it 'creates poros of API merchant data' do
      expect(facade.get_merchant(1)).to be_a Merchant
      expect(facade.get_merchant(2)).to be_a Merchant
    end
  end

  describe '#get_merchant_items' do
    it 'creates poros of items associated with merchant id' do
      facade.get_merchant_items(1).each do |item|
        expect(item).to be_a Item
        expect(item.name).to be_a String
        expect(item.description).to be_a String
        expect(item.unit_price).to be_a Float
      end
    end
  end

  describe '#find_merchants' do
    it 'returns all merchants matching the search query' do
      expect(facade.find_merchant('ada')).to be_a Merchant
      expect(facade.find_merchant('ada').name).to be_a String
      expect(facade.find_merchant('ada').name.downcase).to include('ada')
    end
  end
end
