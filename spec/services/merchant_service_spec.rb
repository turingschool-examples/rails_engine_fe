require 'rails_helper'

RSpec.describe MerchantService do
  describe 'returns a list of merchants' do
    it 'merchant_list', :vcr do
      merchant_list = MerchantService.merchant_list
      expect(merchant_list).to be_a(Hash)
      expect(merchant_list).to have_key(:data)
      expect(merchant_list[:data]).to be_an(Array)
    end
  end

  describe 'returns a single merchant' do
    it 'merchant_by_id', :vcr do
      merchant_list = MerchantService.merchant_by_id(1)
      expect(merchant_list).to be_a(Hash)
      expect(merchant_list).to have_key(:data)
      expect(merchant_list[:data]).to be_a(Hash)
      expect(merchant_list[:data]).to have_key(:id)
      expect(merchant_list[:data][:attributes]).to have_key(:name)
    end
  end

  describe 'returns all items by merchant' do
    it 'items_by_merchant', :vcr do
      items_list = MerchantService.items_by_merchant(1)
      expect(items_list).to be_a(Hash)
      expect(items_list).to have_key(:data)
      expect(items_list[:data]).to be_an(Array)
    end
  end

  describe 'returns all items' do
    it 'items_list', :vcr do
      items_list = MerchantService.items_list
      expect(items_list).to be_a(Hash)
      expect(items_list).to have_key(:data)
      expect(items_list[:data]).to be_an(Array)
    end
  end

  describe 'returns a single item' do
    it 'item_by_id', :vcr do
      merchant_list = MerchantService.item_by_id(4)
      expect(merchant_list).to be_a(Hash)
      expect(merchant_list).to have_key(:data)
      expect(merchant_list[:data]).to be_a(Hash)
      expect(merchant_list[:data]).to have_key(:id)
      expect(merchant_list[:data][:attributes]).to have_key(:name)
    end
  end
end
