require 'rails_helper'

RSpec.describe ItemService do
  it "returns one items data" do
    VCR.use_cassette('item_service') do
      search = ItemService.one_item(179)
      expect(search).to be_a Hash
      expect(search[:data][:attributes]).to be_an Hash

      item_data = search[:data]

      expect(item_data[:attributes]).to have_key :name
      expect(item_data[:attributes][:name]).to be_a String
    end
  end
end
