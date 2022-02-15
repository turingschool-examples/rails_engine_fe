require 'rails_helper'

RSpec.describe MerchantService, type: :service do
  context 'class methods' do
    describe '::conn' do
      it 'returns Faraday connection' do
        merchants = MerchantService.conn

        expect(merchants).to be_a(Faraday::Connection)
      end
    end

    describe '::get_merchants' do
      it 'returns a hash of the merchants details' do
        merchants = MerchantService.get_merchants
        
        expect(merchants).to be_a(Hash)
        expect(merchants[:data]).to be_a(Array)
        
        merchants[:data].each do |merchant|
          expect(merchant).to be_a(Hash)
          expect(merchant).to have_key(:id)
          expect(merchant[:id]).to be_an(String)
          
          expect(merchant).to have_key(:type)
          expect(merchant[:type]).to eq('merchant')
          
          expect(merchant[:attributes]).to have_key(:name)
          expect(merchant[:attributes][:name]).to be_a(String)
        end
      end
    end
    
    describe '::get_merchant' do
      it 'returns a hash of the merchant details' do
        merchant = MerchantService.get_merchant(1)
        
        expect(merchant).to be_a(Hash)
        expect(merchant[:data]).to be_a(Hash)
        expect(merchant[:data]).to have_key(:id)
        expect(merchant[:data][:id]).to be_an(String)
        expect(merchant[:data][:id].to_i).to eq(1)

        expect(merchant[:data]).to have_key(:type)
        expect(merchant[:data][:type]).to eq('merchant')

        expect(merchant[:data][:attributes]).to have_key(:name)
        expect(merchant[:data][:attributes][:name]).to be_a(String)
        expect(merchant[:data][:attributes][:name]).to eq('Schroeder-Jerde')
      end
    end

    describe '::get_merch_items' do
      it 'returns a hash of  merchants items details' do
        items = MerchantService.get_merch_items(1)

        expect(items).to be_a(Hash)
        expect(items[:data]).to be_a(Array)
  
        items[:data].each do |item|
          expect(item).to be_a(Hash)
          expect(item).to have_key(:id)
          expect(item[:id]).to be_an(String)
  
          expect(item).to have_key(:type)
          expect(item[:type]).to eq('item')
  
          expect(item[:attributes]).to have_key(:name)
          expect(item[:attributes][:name]).to be_a(String)
          
          expect(item[:attributes]).to have_key(:description)
          expect(item[:attributes][:description]).to be_a(String)

          expect(item[:attributes]).to have_key(:unit_price)
          expect(item[:attributes][:unit_price]).to be_a(Float)
        end
      end
    end

    describe '::find_merchant' do
      it 'returns merchant found by name fragment' do
        merchant = MerchantService.find_merchant('iLl')

        expect(merchant).to be_a(Hash)
        expect(merchant[:data]).to be_a(Hash)
        expect(merchant[:data]).to have_key(:id)
        expect(merchant[:data][:id]).to be_an(String)
        expect(merchant[:data][:id].to_i).to eq(28)

        expect(merchant[:data]).to have_key(:type)
        expect(merchant[:data][:type]).to eq('merchant')

        expect(merchant[:data][:attributes]).to have_key(:name)
        expect(merchant[:data][:attributes][:name]).to be_a(String)
        expect(merchant[:data][:attributes][:name]).to eq('Schiller, Barrows and Parker')
      end
    end
  end
end
