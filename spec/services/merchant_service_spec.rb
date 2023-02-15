require 'rails_helper'

RSpec.describe MerchantService do
  it 'can return merchants info' do
    merchants = MerchantService.get_merchants

    expect(merchants).to be_a(Hash)
    expect(merchants).to have_key(:data)
    expect(merchants[:data]).to be_a(Array)
    
    expect(merchants[:data][0]).to have_key(:attributes)

    merchants_data = merchants[:data][0]
    
    expect(merchants_data[:attributes]).to have_key(:name)
    expect(merchants_data[:attributes][:name]).to be_a(String)
  end
end