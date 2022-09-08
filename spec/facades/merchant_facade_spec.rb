require 'rails_helper'

RSpec.describe MerchantFacade do
  it "gets all merchants", :vcr do 
    merchants = MerchantFacade.create_all_merchants 
    expect(merchants[0]).to be_a(Merchant)
  end
end