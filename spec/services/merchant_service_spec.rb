require 'rails_helper'
RSpec.describe 'Rails-Engine merchant service' do 
  it 'can get all merchants' do 
    response = MerchantService.get_all_merchants

    expect(response).to be_a(Hash)
    expect(response[:data]).to be_an(Array)

    first_merchant = response[:data][0]

    expect(first_merchant[:attributes][:name]).to be_a(String)
  end 

  it 'can get a single merchant by id' do 
    response = MerchantService.get_merchant_name(1)

    expect(response).to be_a(Hash)
    expect(response[:data]).to be_a(Hash)

    first_merchant = response[:data]

    expect(first_merchant[:attributes][:name]).to be_a(String)
  end 

  it 'can get a merchants items' do 
    response = MerchantService.get_merchant_items(1)

    expect(response).to be_a(Hash)
    expect(response[:data]).to be_an(Array)

    first_item = response[:data][0]

    expect(first_item[:attributes][:name]).to be_a(String)
    expect(first_item[:attributes][:description]).to be_a(String)
    expect(first_item[:attributes][:unit_price]).to be_a(Float)
    expect(first_item[:attributes][:merchant_id]).to be_an(Integer)
    
  end 
end
