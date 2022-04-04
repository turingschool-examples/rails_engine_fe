require 'rails_helper'

RSpec.describe 'The rails engine Item Service' do 
  context 'Class methods' do 
    it '.one_item' do 
      VCR.use_cassette('get_item') do 
        one_item = ItemService.one_item("4")

        expect(one_item).to be_an(Hash)
        expect(one_item[:id]).to be_an(String)
        expect(one_item[:type]).to eq("item")
        expect(one_item[:attributes]).to be_an(Hash)
        expect(one_item[:attributes][:name]).to be_an(String)
        expect(one_item[:attributes][:description]).to be_an(String)
        expect(one_item[:attributes][:unit_price]).to be_an(Float)
        expect(one_item[:attributes][:merchant_id]).to be_an(Integer)
      end
    end 

  end 
end