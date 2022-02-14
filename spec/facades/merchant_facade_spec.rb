require 'rails_helper'

RSpec.describe MerchantFacade do
  describe '::all_merchants' do
    it 'returns a list of all merchants in the database' do
      merchants = MerchantFacade.all_merchants

      expect(merchants).to be_a Array
      merchants.each do |merchant|
        expect(merchant).to be_a Merchant
        expect(merchant.id).to be_a Integer
        expect(merchant.name).to be_a String
        expect(merchant.type).to eq("merchant")
      end
    end
  end

  describe '::all_merchant_items' do
    it 'returns a list of all of the merchants items' do
      merchant = MerchantFacade.all_merchants.first
      merchant_items = MerchantFacade.all_merchant_items(merchant.id)

      expect(merchant_items).to be_an Array
      merchant_items.each do |item|
        expect(item).to be_a MerchantItem
        expect(item.id).to be_an Integer
        expect(item.description).to be_a String
        expect(item.unit_price).to be_a Float
        expect(item.merchant_id).to be_an Integer
      end
    end
  end

  describe '::find_merchant' do
    it 'returns a single merchant object based on id search' do
      merchant = MerchantFacade.find_merchant(1)
      
      expect(merchant.name).to eq("Schroeder-Jerde")
    end
  end
end
