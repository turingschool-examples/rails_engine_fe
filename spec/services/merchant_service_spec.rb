require 'rails_helper'

describe 'Merchant API request' do
  it 'reaches the endpoint' do
    # MerchantService.merchants_index

    expect(MerchantService.merchants_index).to eq(200)
  end
end
