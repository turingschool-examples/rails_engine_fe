require 'rails_helper'

RSpec.describe MerchantFacade do
  describe '::create_all_merchants' do
    it 'maps through merchant response and instantiates merchant objects with the correct attributes' do
      merchant = MerchantFacade.create_all_merchants

      expect(merchant).to be_an(Array)
      expect(merchant[0].id).to be_a(String)
      expect(merchant[0].name).to be_a(String)
    end
  end  
  
  describe '::create_merchant' do
    it 'instantiates a merchant object by id with the correct attributes' do
      merchant = MerchantFacade.create_merchant(1)

      expect(merchant).to be_a(Merchant)
      expect(merchant.id).to be_a(String)
      expect(merchant.name).to be_a(String)
    end
  end
end