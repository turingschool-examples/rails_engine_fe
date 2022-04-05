require 'rails_helper'

RSpec.describe 'merchant service' do
  it 'can connect to merchant api and return all merchants' do
    results = MerchantService.get_all_merchants

    expect(results).to be_a(Hash)
    expect(results[:data]).to be_an(Array)
    merchant_data = results[:data].first
    expect(merchant_data).to have_key(:type)
    expect(results[:data].first[:type]).to eq("merchant")

    expect(merchant_data).to have_key(:attributes)
    expect(merchant_data[:attributes]).to have_key(:name)
  end

  it 'can return a single merchant' do
    one_merchant = MerchantService.get_one_merchant(1)

    expect(one_merchant).to be_a(Hash)
    expect(one_merchant).to have_key(:data)
    expect(one_merchant[:data][:attributes]).to have_key(:name)
  end

  it 'can return a merchants items' do
    merchant_items = MerchantService.get_merchant_items(1)
    
    expect(merchant_items).to be_a(Hash)
  end
end
