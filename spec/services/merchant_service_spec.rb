require 'rails_helper'

RSpec.describe 'Merchant Service' do
  describe 'class methods' do
    it 'returns the list of merchants' do
      merchants = MerchantService.merchants

      expect(merchants[:data].count).to eq(100)
      expect(merchants).to be_a(Hash)
      expect(merchants[:data]).to be_a(Array)
      expect(merchants[:data].first).to have_key(:id)
      expect(merchants[:data].first[:id]).to eq('1')
      expect(merchants[:data].first).to have_key(:attributes)
      expect(merchants[:data].first[:attributes]).to have_key(:name)
      expect(merchants[:data].first[:attributes][:name]).to eq('Schroeder-Jerde')
    end

    it 'returns the items for a merchant' do
      items = MerchantService.merchant_items(1)

      expect(items).to be_a(Hash)
      expect(items[:data]).to be_a(Array)
      expect(items[:data].first).to have_key(:id)
      expect(items[:data].first).to have_key(:attributes)
      expect(items[:data].first[:attributes]).to have_key(:name)
      expect(items[:data].first[:attributes]).to have_key(:description)
      expect(items[:data].first[:attributes]).to have_key(:unit_price)
      expect(items[:data].first[:attributes]).to have_key(:merchant_id)
    end

    # it 'returns the merchant attributes' do
    #   merchant = MerchantService.merchant(1)

    #   expect(merchant).to be_a(Hash)
    #   expect(merchant[:data]).to have_key(:id)
    #   expect(merchant[:data]).to have_key(:attributes)
    #   expect(merchant[:data][:attributes]).to have_key(:name)
    #   expect(merchant[:data][:attributes][:name]).to eq('Schroeder-Jerde')
    # end
  end
end