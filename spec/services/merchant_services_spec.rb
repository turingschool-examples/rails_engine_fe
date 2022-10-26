require 'rails_helper'

RSpec.describe MerchantService do
  describe 'api endpoint' do
    it 'can get_all_merchants', vcr: { record: :new_episodes } do
      merchants_parsed = MerchantService.get_all_merchants
      merchants_data = MerchantService.get_all_merchants[:data].first

      expect(merchants_parsed).to be_a(Hash)
      expect(merchants_parsed).to have_key :data
      expect(merchants_parsed[:data]).to be_an(Array)

      expect(merchants_data).to have_key :id
      expect(merchants_data[:id]).to be_a(String)
      expect(merchants_data).to have_key :type
      expect(merchants_data[:type]).to be_a(String)
      expect(merchants_data).to have_key :attributes
      expect(merchants_data[:attributes]).to be_a(Hash)
      expect(merchants_data[:attributes]).to have_key :name
      expect(merchants_data[:attributes][:name]).to be_a(String)
    end
  end
end