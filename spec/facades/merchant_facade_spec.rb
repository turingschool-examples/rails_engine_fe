require 'rails_helper'

RSpec.describe MerchantFacade do
  it 'merchants' do
    merchants = MerchantFacade.merchants

    expect(merchants).to be_a Array
    merchants.each do |merchant|
      expect(merchant).to be_a Merchant
    end
  end
  it 'one_merchant' do
    merchant_id = 1
    merchant = MerchantFacade.one_merchant(merchant_id)

    expect(merchant).to be_a Merchant
  end
end
