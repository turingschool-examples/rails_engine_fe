require 'rails_helper'

RSpec.describe MerchantService do
   context 'class methods' do
    context '#all_merchants' do 
      it 'returns a list of all merchants' do 
        search = MerchantService.all_merchants
        expect(search).to be_a Hash

        expect(search[:data]).to be_an Array

        search[:data].each do |merchant_data|
          expect(merchant_data).to have_key(:id)
          expect(merchant_data[:id]).to be_a(String)
          
          expect(merchant_data[:attributes]).to have_key(:name)
          expect(merchant_data[:attributes][:name]).to be_a(String)
        end
      end
    end
    context '#merchant_info(id)' do 
      xit 'returns data for a single merchant' do 
        search = MerchantService.all_merchants
        expect(search).to be_a Hash

        expect(search.count).to eq(1)

        merchant_data = search[:data]

        expect(merchant_data).to have_key(:id)
        expect(merchant_data[:id]).to be_a(String)
        
        expect(merchant_data[:attributes]).to have_key(:name)
        expect(merchant_data[:attributes][:name]).to be_a(String)
      end
    end
    context '#merchant_items(merchant_id)' do 
      xit 'returns a list of all items for a single merchant' do 

      end
    end
  end
end 