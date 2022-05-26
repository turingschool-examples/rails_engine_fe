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

    it '.merchant(merchant_id) returns a single merchant PORO' do
      stub_merchant_show

      merchant = MerchantFacade.merchant(1)

      expect(merchant).to be_a Merchant
      expect(merchant.id).to eq 1
      expect(merchant.name).to eq 'Schroeder-Jerde' 
    end
  end
end
