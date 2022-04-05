require 'rails_helper'
RSpec.describe MerchantService, :vcr do
  it 'returns a hash' do
    merchants = MerchantService.all_merchants
    expect(merchants).to be_a Hash
    expect(merchants).to have_key(:data)
    expect(merchants[:data]).to be_a Array
    merchants[:data].each do |merchant|
      expect(merchant).to have_key(:id)
      expect(merchant).to have_key(:type)
      expect(merchant).to have_key(:attributes)
      expect(merchant[:type]).to eq("merchant")
      expect(merchant[:attributes]).to have_key(:name)
    end
  end

  it 'can find a single merchant' do
    merchant = MerchantService.find_merchant(1)
    expect(merchant).to be_a Hash
    expect(merchant).to have_key(:data)
    expect(merchant[:data]).to have_key(:id)
    expect(merchant[:data]).to have_key(:type)
    expect(merchant[:data][:type]).to eq("merchant")
    expect(merchant[:data]).to have_key(:attributes)
    expect(merchant[:data][:attributes]).to have_key(:name)
  end

end
