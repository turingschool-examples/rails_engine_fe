require 'rails_helper'

RSpec.describe 'merchant service' do
  it 'can connect to merchant api and return all merchants' do
    merchants = MerchantService.get_all_merchants

    expect(merchants).to be_a(Hash)
    expect(merchants[:data]).to be_an(Array)

    merchants[:data].each do |merchant|
      expect(merchant).to have_key(:type)
      expect(merchant[:type]).to eq("merchant")

      expect(merchant).to have_key(:attributes)
      expect(merchant[:attributes]).to have_key(:name)
      expect(merchant[:attributes][:name]).to be_a(String)
    end
  end

  it 'can return a single merchant' do
    one_merchant = MerchantService.get_one_merchant(1)

    expect(one_merchant).to be_a(Hash)
    expect(one_merchant).to have_key(:data)

    expect(one_merchant[:data][:attributes]).to have_key(:name)
    expect(one_merchant[:data][:attributes][:name]).to be_a(String)
  end

  it 'can return a merchants items' do
    merchant_items = MerchantService.get_merchant_items(1)

    expect(merchant_items).to be_a(Hash)
    expect(merchant_items[:data]).to be_a(Array)

    merchant_items[:data].each do |merchant|
      expect(merchant).to have_key(:type)
      expect(merchant[:type]).to eq("item")

      expect(merchant).to have_key(:attributes)
      expect(merchant[:attributes]).to have_key(:name)
      expect(merchant[:attributes][:name]).to be_a(String)

      expect(merchant[:attributes]).to have_key(:description)
      expect(merchant[:attributes][:description]).to be_a(String)

      expect(merchant[:attributes]).to have_key(:unit_price)
      expect(merchant[:attributes][:unit_price]).to be_a(Float)
    end
  end
end
