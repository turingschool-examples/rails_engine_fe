require 'rails_helper'

RSpec.describe MerchantService do
  describe '::get_merchant' do
    it 'gets data for a specific merchant by id' do
      response = MerchantService.get_merchant(1)
      
      expect(response[:id]).to eq('1')    
      expect(response[:type]).to eq('merchant')    
      expect(response[:attributes]).to have_key(:name)    
    end
  end
end
    