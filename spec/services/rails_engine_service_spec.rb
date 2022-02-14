require 'rails_helper'

RSpec.describe RailsEngineService do
  describe 'class methods' do
    describe 'all_merchants' do
    
      let!(:merchants) {RailsEngineService.all_merchants}
      let!(:merchant_1) {merchants[:data].first}

      it 'returns response hash' do
        expect(merchants).to be_a(Hash)
      end

      it 'contains an array' do
        expect(merchants[:data]).to be_an(Array)
      end

      it 'elements contain correct info' do
        expect(merchant_1).to be_a(Hash)

        expect(merchant_1).to have_key(:id)
        expect(merchant_1[:id]).to be_a(String)

        expect(merchant_1).to have_key(:type)
        expect(merchant_1[:type]).to eq("merchant")

        expect(merchant_1).to have_key(:attributes)
        expect(merchant_1[:attributes]).to be_a(Hash)

        expect(merchant_1[:attributes]).to have_key(:name)
        expect(merchant_1[:attributes][:name]).to be_a(String)
      end
    end
  end
end
