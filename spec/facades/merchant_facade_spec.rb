require 'rails_helper'

RSpec.describe 'Merchant Facade' do
  it 'creates merchant poros' do
    merchants = MerchantFacade.merchants

    expect(merchants).to be_a(Array)
    expect(merchants.count).to eq(100)
    merchants.each do |merchant|
      expect(merchant).to be_a(Merchant)
    end
  end

  it 'creates a merchant poro' do
    merchant = MerchantFacade.merchant(1)

    expect(merchant).to be_a(Merchant)
  end

  it 'creates a merchants items as poros' do
    merchant_items = MerchantFacade.items(1)

    expect(merchant_items).to be_a(Array)
    expect(merchant_items.count).to eq(15)

    merchant_items.each do |item|
      expect(item).to be_a(Item)
    end
  end
 end
