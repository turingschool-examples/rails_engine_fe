require 'rails_helper'

describe 'MerchantFacade' do
  it 'can find a list of merchants' do
    merchants = MerchantFacade.find_merchants

    expect(merchants).to be_a Array
    expect(merchants.first).to be_a Merchant
    expect(merchants.count).to eq(100)
  end

end
