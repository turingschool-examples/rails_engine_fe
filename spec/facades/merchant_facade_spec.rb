require 'rails_helper'

describe 'Merchant Facade' do
  it 'can see a list of all merchants' do
    VCR.use_cassette('merchants') do
      merchants = MerchantFacade.merchants_all
      expect(merchants).to be_an(Array)
    end
  end

  it 'can see one merchant' do
    VCR.use_cassette('merchant') do
      merchant = MerchantFacade.find_merchant(1)
      expect(merchant).to be_a(Merchant)
    end
  end

  it 'can see a list of all items by merchant' do
    VCR.use_cassette('items_by_merchant') do
      items = MerchantFacade.all_items(1)
      expect(items).to be_an(Array)
    end
  end
end
