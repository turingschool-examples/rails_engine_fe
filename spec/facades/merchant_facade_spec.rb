require 'rails_helper'

describe 'Merchant Facade' do
  it 'can see a list of all merchants' do
    VCR.use_cassette('merchants') do
      merchants = MerchantFacade.merchants_all
      expect(merchants).to be_an(Array)
    end
  end
end
