require 'rails_helper'

RSpec.describe MerchantFacade do

  it '.merchants' do 
    merchants = MerchantFacade.merchants 

    expect(merchants).to be_an Array 
    expect(merchants.first).to be_a Merchant
  end
end
