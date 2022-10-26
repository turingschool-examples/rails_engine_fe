require 'rails_helper'

RSpec.describe MerchantService do
  describe 'class methods' do
    it 'returns a list/data about all merchants' do
      all_merchant_data = MerchantService.request_all_merchants
      all_merchants = all_merchant_data[:data] 
      expect(all_merchant_data).to be_a(Hash)
      expect(all_merchants).to be_a(Array)
      all_merchants.each do |merchant|
        expect(merchant[:type]).to eq("merchant")
        expect(merchant[:id].to_i).to be_a(Integer)
        expect(merchant[:attributes]).to have_key(:name)
        expect(merchant.count).to eq(3)
      end
    end

    it 'returns info about a single merchant' do
      one_merchant_data = MerchantService.request_one_merchant(3)
      one_merchant = one_merchant_data[:data]
      
      expect(one_merchant_data).to be_a(Hash)
      expect(one_merchant).to be_a(Hash)
      expect(one_merchant.count).to eq(3)
      expect(one_merchant[:type]).to eq("merchant")
      expect(one_merchant[:attributes]).to have_key(:name)
    end
  end
end