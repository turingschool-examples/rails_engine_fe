require 'rails_helper'

RSpec.describe 'The Merchant Facade' do 
  context 'Class Methods' do 
    it '.merchants' do 
      VCR.use_cassette('merchants') do 
        all_merchants = MerchantFacade.merchants
        expect(all_merchants).to be_an(Array)
        expect(all_merchants.first).to be_an(Merchant)
      end 
    end

    it '.merchant' do 
      VCR.use_cassette('merchant') do 
        one_merchant = MerchantFacade.merchant("1")
        expect(one_merchant).to be_an(Merchant)
        expect(one_merchant.id).to eq("1")
        expect(one_merchant.name).to be_an(String)
      end 
    end

    it '.merchant_items' do 
      VCR.use_cassette('merchant_items') do 
        one_merchant_items = MerchantFacade.merchant_items("1")
        expect(one_merchant_items).to be_an(Array)
        expect(one_merchant_items.first).to be_an(Item)
        expect(one_merchant_items.first.name).to be_an(String)
        expect(one_merchant_items.first.description).to be_an(String)
        expect(one_merchant_items.first.id).to be_an(String)
        expect(one_merchant_items.first.unit_price).to be_an(Float)
        expect(one_merchant_items.first.merchant_id).to be_an(Integer)
      end 
    end

    it '.single_merchant_search' do 
      VCR.use_cassette('single_merchant_search') do 
        one_merchant = MerchantFacade.single_merchant_search("ill")
        expect(one_merchant.id).to be_an(String)
        expect(one_merchant.name).to be_an(String)
      end 
    end
  end
end