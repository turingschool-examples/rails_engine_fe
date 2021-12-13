require 'rails_helper'

RSpec.describe Merchant do
  let!(:merchant) { MerchantFacade.merchant_show(1) }

  it 'has attributes' do
    expect(merchant.id).to be_an Integer
    expect(merchant.name).to be_a String
  end
end