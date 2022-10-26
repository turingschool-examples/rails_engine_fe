require 'rails_helper'

RSpec.describe MerchantService do
  describe 'api endpoint' do
    it 'can get_all_merchants', :vcr do
      merchants_data = MerchantService.get_all_merchants

      expect(merchants_data).to be_a(Array)
      expect(merchants_data[0]).to have_key :id
      expect(merchants_data[0][:id]).to be_a(String)
      expect(merchants_data[0]).to have_key :type
      expect(merchants_data[0][:type]).to be_a(String)
      expect(merchants_data[0]).to have_key :attributes
      expect(merchants_data[0][:attributes]).to be_a(Hash)
      expect(merchants_data[0][:attributes]).to have_key :name
      expect(merchants_data[0][:attributes][:name]).to be_a(String)
    end
  end
end