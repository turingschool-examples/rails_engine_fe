require 'rails_helper'

RSpec.describe 'Merchant Facade' do
  it '.merchant_names', :vcr do
    merchants = MerchantFacade.merchant_names

    expect(merchants).to be_an(Array)
    expect(merchants.first).to be_a(Merchant)
  end
end
