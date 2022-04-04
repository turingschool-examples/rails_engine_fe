require 'rails_helper'

RSpec.describe 'The rails engine Merchant Service' do 
  context 'Class methods' do 
    it '.get_merchants' do 
      VCR.use_cassette('get_merchants') do 
        all_merchants = MerchantService.get_merchants 

        expect(all_merchants).to be_an(Array)
        expect(all_merchants.count).to eq(100)
        expect(all_merchants.first).to be_an(Hash)
        expect(all_merchants.first[:id]).to be_an(String)
        expect(all_merchants.first[:type]).to eq("merchant")
        expect(all_merchants.first[:attributes]).to be_an(Hash)
        expect(all_merchants.first[:attributes][:name]).to be_an(String)
      end
    end 

    it '.get_merchant' do 
      VCR.use_cassette('get_merchant') do 
        one_merchant = MerchantService.get_merchant("1")

        expect(one_merchant).to be_an(Hash)
        expect(one_merchant[:id]).to be_an(String)
        expect(one_merchant[:type]).to eq("merchant")
        expect(one_merchant[:attributes]).to be_an(Hash)
        expect(one_merchant[:attributes][:name]).to be_an(String)
      end
    end 

    it '.get_merchant_items' do 
      VCR.use_cassette('get_merchant_items') do 
        one_merchant_items = MerchantService.get_merchant_items("1")
        expect(one_merchant_items).to be_an(Array)
        expect(one_merchant_items.count).to eq(15)

        expect(one_merchant_items.first[:id]).to be_an(String)
        expect(one_merchant_items.first[:type]).to eq("item")
        expect(one_merchant_items.first[:attributes]).to be_an(Hash)
        expect(one_merchant_items.first[:attributes][:name]).to be_an(String)
        expect(one_merchant_items.first[:attributes][:description]).to be_an(String)
        expect(one_merchant_items.first[:attributes][:unit_price]).to be_an(Float)
        expect(one_merchant_items.first[:attributes][:merchant_id]).to be_an(Integer)
      end
    end 
  end
end 