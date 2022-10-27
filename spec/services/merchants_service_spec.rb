require 'rails_helper'

RSpec.describe MerchantsService do
  it 'returns a list of the first 20 merchants' do
    merchants = MerchantsService.get_merchants

    expect(merchants).to be_a(Hash)
    expect(merchants).to have_key(:data)
    expect(merchants[:data]).to be_an(Array)

    merchants[:data].each do |merchant|
      expect(merchant).to have_key(:id)
      expect(merchant[:type]).to eq("merchant")
      expect(merchant).to have_key(:attributes)
      expect(merchant[:attributes]).to have_key(:name)
      expect(merchant[:attributes][:name]).to be_a(String)
    end
  end

  it 'returns a single merchant' do
    first_merchant_id = MerchantsService.get_merchants[:data].first[:id]

    first_merchant = MerchantsService.get_merchant(first_merchant_id)

    expect(first_merchant).to be_a(Hash)
    expect(first_merchant).to have_key(:data)
    expect(first_merchant[:data]).to be_a(Hash)
    expect(first_merchant[:data][:id]).to eq(first_merchant_id)
    expect(first_merchant[:data][:type]).to eq("merchant")
    expect(first_merchant[:data][:attributes]).to be_a(Hash)
    expect(first_merchant[:data][:attributes]).to have_key(:name)
    expect(first_merchant[:data][:attributes][:name]).to be_a(String)
  end
end