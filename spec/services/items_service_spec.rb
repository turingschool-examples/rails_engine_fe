require 'rails_helper'

RSpec.describe ItemsService do

  it 'returns data coming from items' do

    path = "/api/v1/items"
    response = ItemsService.call_api(path)
    expect(response).to be_a Hash
    expect(response[:data]).to be_an Array
    expect(response[:data][0]).to have_key :id
    expect(response[:data][0]).to have_key :type
    expect(response[:data][0]).to have_key :attributes
    expect(response[:data][0][:attributes]).to have_key :name
    expect(response[:data][0][:attributes]).to have_key :description
    expect(response[:data][0][:attributes]).to have_key :unit_price

  end

end
