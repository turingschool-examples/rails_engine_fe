require 'rails_helper'

RSpec.describe MerchantFacade do 
  it '#merchants', :vcr do 
    merchants = MerchantFacade.merchants
    expect(merchants).to be_an Array
    expect(merchants).to all(be_a Merchant)
  end

  it '#merchant_items', :vcr do 
    items = MerchantFacade.merchant_items(1)
    expect(items).to be_an Array
    expect(items).to all(be_an Item)
  end
end
