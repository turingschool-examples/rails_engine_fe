require 'rails_helper'

describe 'MerchantFacade' do
  it 'can find a list of merchants' do
    merchants = MerchantFacade.find_merchants

    expect(merchants).to be_a Array
    expect(merchants.first).to be_a Merchant
    expect(merchants.count).to eq(100)
  end

  it 'can find one merchant by id' do
    merchant = Merchant.new({:id=>"1", :type=>"merchant", :attributes=>{:name=>"Barnes"}})
    found_merchant = MerchantFacade.find_one_merchant(1)

    expect(found_merchant).to be_a Merchant
  end
end
