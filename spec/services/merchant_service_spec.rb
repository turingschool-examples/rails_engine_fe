require 'rails_helper'

RSpec.describe MerchantsService do 
  it 'can return the merchants data' do 
    response = MerchantsService.all_merchants 

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
end