require 'rails_helper'

RSpec.describe EngineService do 
  describe 'class methods' do
    it '#merchants', :vcr do
      merchants = EngineService.merchants
      expect(merchants).to be_a Hash
      expect(merchants[:data]).to be_an Array
      expect(merchants[:data].first[:attributes][:name]).to be_a String
    end

    it '#merchant_items', :vcr do 
      items = EngineService.merchant_items(1)
      expect(items).to be_a Hash
      expect(items[:data]).to be_an Array
      expect(items[:data].first).to have_key(:id) 
      expect(items[:data].first[:attributes]).to have_key(:name)
      expect(items[:data].first[:attributes]).to have_key(:description)
      expect(items[:data].first[:attributes]).to have_key(:unit_price)
    end

    it '#items', :vcr do 
      items = EngineService.items
      expect(items).to be_a Hash
      expect(items[:data]).to be_an Array
      expect(items[:data].first).to have_key(:id) 
      expect(items[:data].first[:attributes]).to have_key(:name)
      expect(items[:data].first[:attributes]).to have_key(:description)
      expect(items[:data].first[:attributes]).to have_key(:unit_price)
    end
  end
end
