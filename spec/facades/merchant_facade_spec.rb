require 'rails_helper'

RSpec.describe MerchantFacade do
  it 'merchants' do
    merchants = MerchantFacade.merchants

    expect(merchants).to be_a Array
    merchants.each do |merchant|
      expect(merchant).to be_a Merchant
    end
  end
end
