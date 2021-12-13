require 'rails_helper'

RSpec.describe ItemsService do
  it 'data from API' do
    response = ItemsService.get_data('items')

    expect(response).to be_a(Hash)
    expect(response[:data]).to be_an(Array)
    expect(response[:data].first).to have_key(:id)
    expect(response[:data].first).to have_key(:type)
    expect(response[:data].first[:attributes]).to have_key(:name)
    expect(response[:data].first[:attributes]).to have_key(:description)
    expect(response[:data].first[:attributes]).to have_key(:unit_price)
    expect(response[:data].first[:attributes]).to have_key(:merchant_id)
  end

  it 'gets a list of items' do
    response = ItemsService.get_data('items')

    response[:data].each do |item|
      expect(item).to have_key(:id)
      expect(item[:attributes]).to have_key(:name)
      expect(item[:attributes]).to have_key(:description)
      expect(item[:attributes]).to have_key(:unit_price)
      expect(item[:attributes]).to have_key(:merchant_id)
    end
  end
end
