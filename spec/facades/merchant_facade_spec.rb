require 'rails_helper'

RSpec.describe MerchantFacade do
  it 'creates an array of merchant objects' do
    expect(MerchantFacade.all_merchants).to be_an(Array)
    expect(MerchantFacade.all_merchants.first).to be_a(Merchant)
    expect(MerchantFacade.all_merchants.first.name).to be_a(String)
    expect(MerchantFacade.all_merchants.first.id).to be_an(Integer)
  end

  it 'creates an array of all the item objects for a merchant' do
    merchant_id = 7
    expect(MerchantFacade.merchants_items(merchant_id)).to be_an(Array)
    expect(MerchantFacade.merchants_items(merchant_id).first).to be_an(Item)
    expect(MerchantFacade.merchants_items(merchant_id).first.name).to be_a(String)
    expect(MerchantFacade.merchants_items(merchant_id).first.description).to be_a(String)
    expect(MerchantFacade.merchants_items(merchant_id).first.unit_price).to be_a(Float)
    expect(MerchantFacade.merchants_items(merchant_id).first.merchant_id).to be_an(Integer)
  end
end
