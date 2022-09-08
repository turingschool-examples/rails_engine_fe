require 'rails_helper'

RSpec.describe MerchantFacade do
  it "gets all merchants", :vcr do 
    merchants = MerchantFacade.create_all_merchants 
    expect(merchants[0]).to be_a(Merchant)
    expect(merchants).to be_a(Array)
  end

  it "gets a specific merchant", :vcr do 
    merchant = MerchantFacade.create_merchant_search(1)
    expect(merchant).to be_a(Merchant)
    expect(merchant.id).to eq("1")
    expect(merchant.name).to eq("Schroeder-Jerde")
  end
end