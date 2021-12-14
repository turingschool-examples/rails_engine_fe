require 'rails_helper'
# ber spec/services/merchant_service_spec.rb
RSpec.describe MerchantService, :vcr do
  it 'gets merchant data from rails engine backend' do
    response = MerchantService.get_data('')

    expect(response).to be_a(Hash)
    expect(response[:data]).to be_an(Array)
    expect(response[:data].first.count).to eq(3)

    response[:data].each do |merchant|
      expect(merchant).to have_key(:id)
      expect(merchant[:id]).to be_a String

      expect(merchant).to have_key(:type)
      expect(merchant[:type]).to be_a String
      expect(merchant[:type]).to eq("merchant")

      expect(merchant).to have_key(:attributes)
      expect(merchant[:attributes]).to be_a Hash
      expect(merchant[:attributes]).to have_key(:name)

      expect(merchant[:attributes][:name]).to be_a String
    end
  end
end
