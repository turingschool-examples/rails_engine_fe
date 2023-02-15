require 'rails_helper'

RSpec.describe MerchantFacade do
  it 'can return a collection of merchant data' do
    merchants_data = MerchantFacade.all_merchants_data

    expect(merchants_data).to be_a(Array)
    expect(merchants_data[0]).to be_a(Merchant)
  end

  it 'can return one merchant data' do
    merchant = MerchantFacade.merchant_data(1)

    expect(merchant).to be_a(Merchant)
  end
end