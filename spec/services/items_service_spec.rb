require 'rails_helper'

RSpec.describe ItemsService do 
  it 'can return the items data' do 
    response = ItemsService.get_all_items 

    expect(response).to be_a Hash 
    expect(response).to have_key(:data)
    expect(response[:data]).to be_an Array 

    response[:data].each do |item_result| 
      expect(item_result).to have_key(:id)
      expect(item_result).to have_key(:type)
      expect(item_result).to have_key(:attributes)
      expect(item_result[:attributes]).to have_key(:name)
      expect(item_result[:attributes]).to have_key(:description)
      expect(item_result[:attributes]).to have_key(:unit_price)
      expect(item_result[:attributes]).to have_key(:merchant_id)
    end
  end
end