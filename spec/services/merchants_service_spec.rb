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
end