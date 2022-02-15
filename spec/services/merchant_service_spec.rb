require "rails_helper"

RSpec.describe MerchantService do
  context '.merchants' do
    it "gets a list of merchants" do
      response = MerchantService.all_merchants
      expect(response).to be_an(Array)
      expect(response.first).to have_key :id
      expect(response.first[:id]).to be_a String
      expect(response.first[:attributes]).to have_key :name
      expect(response.first[:attributes][:name]).to be_a String
    end
  end

  context '.merchant' do
    it "gets one merchant" do
      response = MerchantService.merchant(4)
      expect(response).to be_a(Hash)
      expect(response[:attributes]).to have_key :name
      expect(response[:attributes][:name]).to be_a String
    end
  end

  context '.merchant_items' do
    it 'gets a merchants items' do
      response = MerchantService.merchant_items(4)
      expect(response).to be_an(Array)
      expect(response.first).to have_key :id
      expect(response.first[:id]).to be_a String
      expect(response.first[:attributes]).to have_key :name
      expect(response.first[:attributes][:name]).to be_a String
    end
  end
end
