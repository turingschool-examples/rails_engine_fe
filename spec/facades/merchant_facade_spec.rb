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
  end
end