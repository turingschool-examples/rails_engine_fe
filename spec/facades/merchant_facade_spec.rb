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
  end
end