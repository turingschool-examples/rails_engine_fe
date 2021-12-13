require 'rails_helper'

RSpec.describe 'Merchant Facade' do
  it '.merchants' do
    merchant = MerchantFacade.merchants.first

    expect(merchant).to be_a Merchant
  end

  it '.merchant_items' do
    item = MerchantFacade.merchant_items("1").first

    expect(item).to be_a Item
  end
end