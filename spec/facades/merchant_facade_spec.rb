require 'rails_helper'
RSpec.describe MerchantFacade do
  describe 'all_merchants', :vcr do
    before (:each) do
      @merchants = MerchantFacade.all_merchants
    end
    it 'returns an array' do
      expect(@merchants).to be_a Array
    end

    it 'contains merchant objects' do
      @merchants.each do |merchant|
        expect(merchant).to be_a Merchant
      end
    end
  end

  describe 'find_merchant', :vcr do
    before :each do
    @merchant = MerchantFacade.find_merchant(1)
    end
    it 'returns a merchant object' do
      expect(@merchant).to be_a Merchant
    end
  end
end
