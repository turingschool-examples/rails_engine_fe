require 'rails_helper'

RSpec.describe MerchantFacade do
  describe '#get_merchants' do
    it 'returns an array of merchants', :vcr do

      array_of_merchants = MerchantFacade.get_merchants
      expect(array_of_merchants).to be_a Array
      expect(array_of_merchants.first.class).to be(Merchant)
      expect(array_of_merchants).to all( be_a(Merchant) )
    end
  end

  describe '#get_merchants_items(id)' do
    it 'returns an array merchant items based on the id of the merchant', :vcr do
      id = 1
      array_of_items = MerchantFacade.get_merchants_items(id)
  
      expect(array_of_items).to be_a Array
      expect(array_of_items.first.class).to be(Item)
      expect(array_of_items).to all( be_a(Item) )
    end
  end
end