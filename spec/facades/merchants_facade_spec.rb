require 'rails_helper'
# ber spec/facades/merchants_facade_spec.rb
RSpec.describe 'Merchants Facade', :vcr do
  it 'gets all merchants' do
    all_merchants = MerchantsFacade.all_merchants

    expect(all_merchants).to be_an Array
    expect(all_merchants.first).to be_a Merchant
    expect(all_merchants.first.name).to be_a String
    expect(all_merchants.first.id).to be_a String
  end

  it 'gets one merchant' do
    merchant = MerchantsFacade.merchant_by_id(2)

    expect(merchant).to be_a Merchant

    expect(merchant.name).to be_a String
    expect(merchant.name).to eq("Klein, Rempel and Jones")

    expect(merchant.id).to be_a String
    expect(merchant.id).to eq("2")
  end

  it 'gets a merchants items' do
    merchant_items = MerchantsFacade.merchant_items(2)

    expect(merchant_items).to be_an Array
    expect(merchant_items.first).to be_an Item

    first_item = merchant_items.first

    expect(first_item.name).to be_a String
    expect(first_item.description).to be_a String
    expect(first_item.unit_price).to be_a Float

    expect(first_item.id).to be_a String
    expect(first_item.id).to eq("16")
  end
end
