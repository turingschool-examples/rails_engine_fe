require 'rails_helper'
# ber spec/services/merchant_service_spec.rb
RSpec.describe MerchantService, :vcr do
  it 'gets data from rails engine backend' do
    # response = MerchantService.get_data(api_v1_merchants_path)
    response = MerchantService.get_data('')

    expect(response).to be_a(Hash)
    expect(response[:data]).to be_an(Array)

    response[:data].each do |merchant|
      expect(merchant).to have_key(:id)
      expect(merchant).to have_key(:type)
      expect(merchant).to have_key(:attributes)
      expect(merchant[:attributes]).to have_key(:name)
    end
  end

end
