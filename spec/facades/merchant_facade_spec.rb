require 'rails_helper'

RSpec.describe MerchantFacade do

  it '::all_merchants' do
    merchants = MerchantFacade.all_merchants

    expect(merchants).to be_an Array
    merchants.each do |merchant|
      expect(merchant).to be_a MerchantPoro
    end
  end

end
