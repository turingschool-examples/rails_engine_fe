require 'rails_helper'

RSpec.describe MerchantsFacade do 
  it 'can return the collection of Merchants' do 
    merchants = MerchantsFacade.all_merchants 

    expect(merchants).to be_an Array 
    merchants.each do |merchant|
      expect(merchant).to be_an_instance_of(Merchant)
    end
  end

  it 'can return the collection of merchant items' do 
    merchant_items = MerchantsFacade.merchant_items(1)

    expect(merchant_items).to be_an Array 
    merchant_items.each do |item|
      expect(item).to be_an_instance_of(Item)
    end
  end

  it 'can return a single merchant' do 
    merchant = MerchantsFacade.find_merchant(1)

    expect(merchant).to be_an_instance_of(Merchant)
  end
end