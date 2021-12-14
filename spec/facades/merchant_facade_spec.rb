require 'rails_helper' 

RSpec.describe 'Merchant Facade' do 
  describe '.get_merchants' do 
    it 'returns an array of merchant poros', :vcr do 
      merchants = MerchantFacade.get_merchants 

      expect(merchants).to be_an(Array)
    end 
  end 

  describe '.get_merchant_items' do 
    it 'returns an array of MerchantItem poros', :vcr do 
      merchant_items = MerchantFacade.get_merchant_items(1)

      expect(merchant_items).to be_an(Array)
    end 
  end 
end 