require 'rails_helper'

RSpec.describe RailsEngineService do
  describe 'get_all_merchants' do
    it 'can return a list of merchants' do
      response = RailsEngineService.get_all_merchants

      expect(response).to have_key(:data)
      expect(response[:data]).to be_a(Array)

      response[:data].each do |data|
        expect(data).to have_key(:id)
        expect(data).to have_key(:attributes)
        expect(data[:attributes]).to have_key(:name)
      end
    end
  end

  describe 'get_one_merchant' do
    it 'can return one merchant response' do
      response = RailsEngineService.get_one_merchant(42)
      
      expect(response).to have_key(:data)
      expect(response[:data]).to be_a(Hash)
      expect(response[:data]).to have_key(:id)
      expect(response[:data][:attributes]).to have_key(:name)

      expect(response[:data][:id]).to eq("42")
      expect(response[:data][:attributes][:name]).to eq("Glover Inc")
    end
  end
end