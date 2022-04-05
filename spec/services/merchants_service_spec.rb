require 'rails_helper'
RSpec.describe MerchantService do
  context 'class methods' do

    it 'returns a list of all Merchants' do
      search = MerchantService.get_all_merchants
      expect(search).to be_a Hash
      expect(search[:data]).to be_an Array
    end

    it 'returns one merchant' do
      search = MerchantService.get_one_merchant(1)
      expect(search).to be_a Hash
      expect(search.count).to eq 1
      expect(search[:data]).to be_an Hash
    end

    it "returns a all of a merchant's items" do
      search = MerchantService.get_all_merchant_items(1)
      expect(search).to be_a Hash
      expect(search[:data]).to be_an Array
    end
  end
end
