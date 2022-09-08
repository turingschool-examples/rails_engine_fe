require 'rails_helper'

RSpec.describe MerchantService do
  it 'gets data for a specific merchant by id' do
    merchant = MerchantService.get_merchant(1)

    expect(merchant[:id]).to eq('1')    
    expect(merchant[:type]).to eq('merchant')    
    expect(merchant[:attributes]).to have_key(:name)    
  end
end