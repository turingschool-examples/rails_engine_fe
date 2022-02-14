require 'rails_helper'

RSpec.describe ItemService do

  it 'gets items' do
    merchant = MerchantFacade.all_merchants.first
    service = ItemService.new
    results = service.get_all_items

    results[:data].each do |result|
      expect(result).to have_key(:id)
      expect(result).to have_key(:type)
      expect(result[:type]).to eq('item')
      expect(result).to have_key(:attributes)
      expect(result[:attributes][:name]).to be_a String
      expect(result[:attributes][:description]).to be_a String
      expect(result[:attributes][:unit_price]).to be_a Float
      expect(result[:attributes][:merchant_id]).to be_an Integer
    end
  end

end
