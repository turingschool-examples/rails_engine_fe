require 'rails_helper'

RSpec.describe MerchantFacade do
  it 'finds and creates one merchant' do
    merchant = MerchantFacade.find_merchant(3)

    expect(merchant).to be_instance_of(Merchant)
    expect(merchant.id.to_i).to eq(3)
    expect(merchant.name).to eq("Willms and Sons")
  end

  it 'finds and creates multiple merchants' do
    merchants = MerchantFacade.find_merchants
    merchant = merchants.second

    expect(merchants.last).to be_instance_of(Merchant)
    expect(merchant.id.to_i).to be_a(Integer)
    expect(merchant.name).to be_a(String)
  end
end

