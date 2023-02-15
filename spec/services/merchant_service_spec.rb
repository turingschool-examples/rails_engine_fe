require 'rails_helper'

RSpec.describe MerchantService do
  it 'can return merchants info' do
    merchants = MerchantService.get_all_merchants

    expect(merchants).to be_a(Hash)
    expect(merchants).to have_key(:data)
    expect(merchants[:data]).to be_a(Array)
    
    expect(merchants[:data][0]).to have_key(:attributes)

    merchants_data = merchants[:data][0]
    
    expect(merchants_data[:attributes]).to have_key(:name)
    expect(merchants_data[:attributes][:name]).to be_a(String)
  end

  it 'can return one merchant by id' do
    merchant = MerchantService.get_merchant(1)

    expect(merchant).to be_a(Hash)
    expect(merchant).to have_key(:data)
    expect(merchant[:data]).to have_key(:attributes)
    expect(merchant[:data][:attributes]).to have_key(:name)
    expect(merchant[:data][:attributes][:name]).to be_a(String)
  end

end