require 'rails_helper'
# ber spec/services/item_service_spec.rb
RSpec.describe ItemService, :vcr do
  it 'gets item data from rails engine backend' do
    response = ItemService.get_data('')

    expect(response).to be_a(Hash)
    expect(response[:data]).to be_an(Array)
    expect(response[:data].first.count).to eq(3)

    response[:data].each do |item|
      expect(item).to have_key(:id)
      expect(item[:id]).to be_a String

      expect(item).to have_key(:type)
      expect(item[:type]).to be_a String
      expect(item[:type]).to eq("item")

      expect(item).to have_key(:attributes)
      expect(item[:attributes]).to be_a Hash
      expect(item[:attributes]).to have_key(:name)
      expect(item[:attributes]).to have_key(:description)
      expect(item[:attributes]).to have_key(:unit_price)

      expect(item[:attributes][:name]).to be_a String
      expect(item[:attributes][:description]).to be_a String
      expect(item[:attributes][:unit_price]).to be_a Float
    end
  end
end
