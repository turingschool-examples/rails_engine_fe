require 'rails_helper'

RSpec.describe MerchantService do
  context 'class methods' do
    it '.get_all_merchants returns all merchants as JSON' do
      stub_merchant_index

      merchants = MerchantService.get_all_merchants

      expect(merchants).to be_an Array
      expect(merchants.count).to eq 15
      expect(merchants).to be_all Hash

      merchants.each do |merchant|
        expect(merchant).to have_key :id
        expect(merchant[:id]).to be_a String

        expect(merchant).to have_key :attributes
        expect(merchant[:attributes]).to be_a Hash
        
        expect(merchant[:attributes]).to have_key :name
        expect(merchat[:attributes][:name]).to be_a String
      end
    end
  end
end
