require 'rails_helper'

RSpec.describe MerchantService do 
  let!(:merchants) { MerchantService.merchant_data }
  let!(:merchant) { MerchantService.find_merchant(1) }
  it 'establistes connection for merchant data' do 

    expect(merchants).to be_a(Hash)
    expect(merchants[:data][0][:attributes][:name]).to be_a(String)
    expect(merchants[:data][0]).to include(:id)
  end

  it 'finds one merchant by id' do 
    expect(merchant).to be_a(Hash)
    expect(merchant[:data]).to include(:id)
    expect(merchant[:data][:attributes]).to include(:name)
  end
end