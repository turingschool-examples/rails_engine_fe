require 'rails_helper'

RSpec.describe MerchantFacade do 
  let!(:merchants) { MerchantFacade.merchant_info }
  let!(:merchant) { MerchantFacade.merchant_find(1) }
  it 'creates merchants for poro' do 
    expect(merchants.first).to be_a(Merchant)
  end

  it 'finds one merchant for poro' do 
    expect(merchant).to be_a(Merchant)
  end
end