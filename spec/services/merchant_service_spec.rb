require 'rails_helper'

RSpec.describe MerchantsService do 
  it 'can return the merchants data' do 
    response = MerchantsService.get_all_merchants 

    expect(response).to be_a Hash 
    expect(response).to have_key(:data)
    expect(response[:data]).to be_an Array 

    response[:data].each do |merchant_result| 
      expect(merchant_result).to have_key(:id)
      expect(merchant_result).to have_key(:type)
      expect(merchant_result).to have_key(:attributes)
      expect(merchant_result[:attributes]).to have_key(:name)
    end
  end

  it 'can return the merchant items' do 
    response = MerchantsService.get_merchant_items(1)

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