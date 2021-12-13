require 'rails_helper'

RSpec.describe MerchantsService do
  it 'data from API' do
    response = MerchantsService.get_data('merchants')

    expect(response).to be_a(Hash)
    expect(response[:data]).to be_an(Array)
    expect(response[:data].first).to have_key(:id)
    expect(response[:data].first).to have_key(:type)
    expect(response[:data].first[:attributes]).to have_key(:name)
  end

  it 'gets a list of merchants' do
    response = MerchantsService.get_data('merchants')

    response[:data].each do |merchant|
      expect(merchant).to have_key(:id)
      expect(merchant[:attributes]).to have_key(:name)
    end
  end
end
