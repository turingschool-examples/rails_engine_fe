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

    describe 'a_merchant' do

      let!(:merchant) {RailsEngineService.a_merchant(1)}

      it 'returns a response hash' do
        expect(merchant).to be_a(Hash)
      end

      it 'contains correct info' do
        expect(merchant).to have_key(:data)
        expect(merchant[:data]).to be_a(Hash)

        expect(merchant[:data]).to have_key(:id)
        expect(merchant[:data][:id]).to be_a(String)

        expect(merchant[:data]).to have_key(:type)
        expect(merchant[:data][:type]).to eq("merchant")

        expect(merchant[:data]).to have_key(:attributes)
        expect(merchant[:data][:attributes]).to be_a(Hash)

        expect(merchant[:data][:attributes]).to have_key(:name)
        expect(merchant[:data][:attributes][:name]).to be_a(String)
      end
    end

    describe 'merchant_items' do
      let!(:merchant_items) {RailsEngineService.merchant_items(1)}
      let!(:item) {merchant_items[:data].first}

      it 'returns a response hash' do
        expect(merchant_items).to be_a(Hash)
      end

      it 'contains correct info' do
        expect(merchant_items).to have_key(:data)
        expect(merchant_items[:data]).to be_an(Array)

        expect(item).to be_a(Hash)
        expect(item).to have_key(:id)
        expect(item[:id]).to be_a(String)

        expect(item).to have_key(:type)
        expect(item[:type]).to eq("item")

        expect(item).to have_key(:attributes)
        expect(item[:attributes]).to be_a(Hash)

        expect(item[:attributes]).to have_key(:name)
        expect(item[:attributes][:name]).to be_a(String)

        expect(item[:attributes]).to have_key(:description)
        expect(item[:attributes][:description]).to be_a(String)

        expect(item[:attributes]).to have_key(:unit_price)
        expect(item[:attributes][:unit_price]).to be_a(Float)

        expect(item[:attributes]).to have_key(:merchant_id)
        expect(item[:attributes][:merchant_id]).to be_an(Integer)
      end
    end

    describe 'an_item' do
      let!(:item) {RailsEngineService.an_item(4)}

      it 'returns a response hash' do
        expect(item).to be_a(Hash)
      end

      it 'contains correct info' do
        expect(item).to have_key(:data)
        expect(item[:data]).to be_a(Hash)

        expect(item[:data]).to have_key(:id)
        expect(item[:data][:id]).to be_a(String)

        expect(item[:data]).to have_key(:type)
        expect(item[:data][:type]).to eq("item")

        expect(item[:data]).to have_key(:attributes)
        expect(item[:data][:attributes]).to be_a(Hash)

        expect(item[:data][:attributes]).to have_key(:name)
        expect(item[:data][:attributes][:name]).to be_a(String)

        expect(item[:data][:attributes]).to have_key(:description)
        expect(item[:data][:attributes][:description]).to be_a(String)

        expect(item[:data][:attributes]).to have_key(:unit_price)
        expect(item[:data][:attributes][:unit_price]).to be_a(Float)

        expect(item[:data][:attributes]).to have_key(:merchant_id)
        expect(item[:data][:attributes][:merchant_id]).to be_an(Integer)
      end
    end
  end
end
