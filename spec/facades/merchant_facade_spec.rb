require 'rails_helper'

RSpec.describe MerchantsFacade do 
  it 'can return the collection of Merchants' do 
    merchants = MerchantsFacade.all_merchants 

    expect(merchants).to be_an Array 
    merchants.each do |merchant|
      expect(merchant).to be_an_instance_of(Merchant)
    end
  end
end