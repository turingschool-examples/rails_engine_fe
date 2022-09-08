require 'rails_helper'

RSpec.describe MerchantService do
  describe '::get_merchants' do
    it 'gets data for all merchants' do
      response = MerchantService.get_all_merchants
      
      expect(response.count).to eq(100)    
      expect(response[0]).to include(:id, :type, :attributes)
      expect(response[0][:type]).to eq('merchant')    
      expect(response[0][:attributes]).to have_key(:name)    
    end
  end
  
  describe '::get_merchant' do
    it 'gets data for a specific merchant by id' do
      response = MerchantService.get_merchant(1)
      
      expect(response[:id]).to eq('1')    
      expect(response[:type]).to eq('merchant')    
      expect(response[:attributes]).to have_key(:name)    
    end
  end
end
    