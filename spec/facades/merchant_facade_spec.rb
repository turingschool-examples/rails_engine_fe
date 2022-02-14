require 'rails_helper'

RSpec.describe MerchantFacade do

  it '::all_merchants' do
    merchants = MerchantFacade.all_merchants

    expect(merchants).to be_an Array
    merchants.each do |merchant|
      expect(merchant).to be_a MerchantPoro
      expect(merchant.name).to be_a String
      expect(merchant.type).to eq('merchant')
    end
  end

  it 'can find a merchant by id' do
    merchant = MerchantFacade.all_merchants.first
    expect(MerchantFacade.find_merchant('1').name).to eq(merchant.name)
  end

end
