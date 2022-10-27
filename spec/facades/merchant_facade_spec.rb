require "rails_helper"


RSpec.describe MerchantFacade do
  it "can return a list of merchants" do
    merchants = MerchantFacade.merchants_details
  
    expect(merchants).to be_a(Array)
  end

  it "can return one merchant" do
   merchant = MerchantFacade.merchant_details(1)

   expect(merchant).to be_a(Merchant)
   expect(merchant.name).to eq('Schroeder-Jerde')
 end
end