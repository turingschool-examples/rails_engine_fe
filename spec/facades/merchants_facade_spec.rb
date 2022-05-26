require 'rails_helper'

RSpec.describe 'merchants facade', :vcr do
  describe 'class methods' do
    it '#all_merchants' do
      expect(MerchantsFacade.all_merchants).to be_a(Array)
      expect(MerchantsFacade.all_merchants.first).to be_a(Merchant)
    end

    it '#merchant', :vcr do
      expect(MerchantsFacade.merchant(1)).to be_a(Merchant)
    end

    it '#merchant_items', :vcr do
      expect(MerchantsFacade.merchant_items(1)).to be_a(Array)
      expect(MerchantsFacade.merchant_items(1).first).to be_a(Item)
    end
  end
end
