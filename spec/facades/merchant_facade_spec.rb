require 'rails_helper'

RSpec.describe MerchantFacade do
  it 'can return a collection of merchant data' do
    merchants_data = MerchantFacade.merchant_data

    expect(merchants_data).to be_a(Array)
    expect(merchants_data[0]).to be_a(Merchant)
  end
end