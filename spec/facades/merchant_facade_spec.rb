require 'rails_helper'

RSpec.describe MerchantFacade do
  describe '::create_merchant' do
    it 'instantiates a new merchant object with attributes' do
      merchant = MerchantFacade.create_merchant(1)
      
      expect(merchant).to be_a(Merchant)
      expect(merchant.name).to be_a(String)
    end
  end
end