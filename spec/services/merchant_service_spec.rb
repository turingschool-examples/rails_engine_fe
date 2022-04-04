require 'rails_helper'

RSpec.describe MerchantService do
  describe 'instance methods' do

    it 'returns merchant data', :vcr do
      merchant = MerchantService.find_all_merchants

      expect(merchant).to be_a(Hash)
      expect(merchant[:data]).to be_an(Array)

      merchant_data = merchant[:data]

      merchant_data.each do |data|
        expect(data).to have_key(:id)
        expect(data[:id]).to be_a(String)

        expect(data).to have_key(:type)
        expect(data[:type]).to eq('merchant')

        expect(data).to have_key(:attributes)
        expect(data[:attributes]).to be_a(Hash)

        merchant_attributes = data[:attributes]

        expect(merchant_attributes).to have_key(:name)
        expect(merchant_attributes[:name]).to be_a(String)
      end
    end
  end
end
