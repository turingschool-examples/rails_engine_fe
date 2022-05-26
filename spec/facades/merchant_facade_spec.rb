require 'rails_helper'

RSpec.describe MerchantFacade do
  context 'class methods' do
    it '.all_merchants returns all merchants as POROs' do
      stub_merchant_index

      merchants = MerchantFacade.all_merchants

      expect(merchants).to be_an Array
      expect(merchants).to be_all Merchant
      expect(merchants.count).to eq 15
    end
  end
end
