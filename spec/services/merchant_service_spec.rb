require 'rails_helper'

RSpec.describe 'merchant service' do
  describe 'happy path' do
    it 'can get all merchants', :vcr do
      response = MerchantService.merchants

      expect(response).to be_a(Hash)
      expect(response[:data]).to be_an(Array)
    end


  end
end
