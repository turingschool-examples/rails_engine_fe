require 'rails_helper'

RSpec.describe MerchantFacade do

  it '.merchants' do 
    merchants = MerchantFacade.merchants 

    expect(merchants).to be_an Array 
    expect(merchants.first).to be_a Merchant
  end

  it '.items' do 
    merchant = MerchantFacade.merchants.first
    items = MerchantFacade.items(merchant.id) 

    expect(items).to be_an Array 
    expect(items.first).to be_an Item 
  end
end
