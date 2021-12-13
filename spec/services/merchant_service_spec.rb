require 'rails_helper'

RSpec.describe 'Merchant Service' do
  it 'can get all merchants' do
    merchants = MerchantService.all_merchants[:data]
    first_merchant = merchants.first

    expect(first_merchant).to have_key(:id)
    expect(first_merchant[:id]).to eq("1")
    expect(first_merchant).to have_key(:attributes)
    expect(first_merchant[:attributes][:name]).to be_a(String)
    expect(merchants).to be_a(Array)
    expect(merchants.count).to eq(100)
  end

  it 'can return a single merchant' do
    merchant = MerchantService.one_merchant(1)[:data]

    expect(merchant).to have_key(:attributes)
    expect(merchant[:attributes][:name]).to be_a(String)
  end

  it 'can find a merchants items' do
    merchant_items = MerchantService.merchant_items(1)
    data = merchant_items[:data]

    expect(merchant_items).to be_a(Hash)
    expect(data).to be_a(Array)
    expect(data.count).to eq(15)

    data.each do |item|
      expect(item).to have_key(:attributes)
      expect(item[:attributes][:name]).to be_a(String)
      expect(item[:attributes][:description]).to be_a(String)
      expect(item[:attributes][:unit_price]).to be_a(Float)
      expect(item[:attributes][:merchant_id]).to be_a(Integer)
    end
  end
end
