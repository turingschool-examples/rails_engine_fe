require 'rails_helper'

RSpec.describe 'The rails engine API Service' do 
  context 'Class methods' do 
    it '.get_merchants' do 
      VCR.use_cassette('get_merchants') do 
        all_merchants = MerchantService.get_merchants 

        expect(all_merchants).to be_an(Array)
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

        expect(one_merchant[:data]).to be_an(Hash)
        expect(one_merchant[:data][:id]).to be_an(String)
        expect(one_merchant[:data][:type]).to eq("merchant")
        expect(one_merchant[:data][:attributes]).to be_an(Hash)
        expect(one_merchant[:data][:attributes][:name]).to be_an(String)
      end
    end 
  end
end 