require 'rails_helper'

RSpec.describe MerchantFacade do
  it 'can retrive data for all merchants' do
    merchants_data = MerchantFacade.all_merchants

    expect(merchant_data).to be_an arbitrary
    expect(merchant_data[0]).to be_a(Merchant)
  end
end