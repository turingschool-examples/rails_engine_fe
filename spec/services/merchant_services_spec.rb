require 'rails_helper'

RSpec.describe MerchantService do
  describe 'api endpoint' do
    it 'can get_all_merchants', vcr: { record: :new_episodes } do
      merchants_parsed = MerchantService.get_all_merchants
      merchants_data = merchants_parsed[:data].first

      expect(merchants_parsed).to be_a(Hash)
      expect(merchants_parsed).to have_key :data
      expect(merchants_parsed[:data]).to be_an(Array)

      expect(merchants_data).to have_key :id
      expect(merchants_data[:id]).to be_a(String)
      expect(merchants_data).to have_key :attributes
      expect(merchants_data[:attributes]).to be_a(Hash)
      expect(merchants_data[:attributes]).to have_key :name
      expect(merchants_data[:attributes][:name]).to be_a(String)
    end

    it 'can get_one_merchant', vcr: { record: :new_episodes } do
      merchants_data = MerchantService.get_one_merchant(3)

      expect(merchants_data).to be_a(Hash)
      expect(merchants_data).to have_key :data
      expect(merchants_data[:data]).to be_a(Hash)
      expect(merchants_data[:data]).to have_key :id
      expect(merchants_data[:data][:id]).to be_a(String)
      expect(merchants_data[:data]).to have_key :attributes
      expect(merchants_data[:data][:attributes]).to be_a(Hash)
      expect(merchants_data[:data][:attributes]).to have_key :name
      expect(merchants_data[:data][:attributes][:name]).to be_a(String)
    end

    it 'can get_a_merchants_items', vcr: { record: :new_episodes } do
      items_parsed = MerchantService.get_merchant_items(3)
      items_data = items_parsed[:data].first

      expect(items_parsed).to be_a(Hash)
      expect(items_parsed).to have_key :data
      expect(items_parsed[:data]).to be_an(Array)

      expect(items_data).to have_key :id
      expect(items_data[:id]).to be_a(String)
      expect(items_data).to have_key :attributes
      expect(items_data[:attributes]).to be_a(Hash)
      expect(items_data[:attributes]).to have_key :name
      expect(items_data[:attributes][:name]).to be_a(String)
      expect(items_data[:attributes]).to have_key :merchant_id
      expect(items_data[:attributes][:merchant_id]).to be_a(Integer)
    end
  end
end