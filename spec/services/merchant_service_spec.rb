
require 'rails_helper'

RSpec.describe MerchantService, type: :service do
  context 'class methods', :vcr do
    describe '::conn' do
      it 'returns Faraday connection' do
        merchant = MerchantService.conn

        expect(merchant).to be_a(Faraday::Connection)
      end
    end

    describe '::get_merchant' do
      it 'returns hash of merchant details' do
        merchant = MerchantService.get_merchant(2)

        expect(merchant).to be_a(Hash)
        expect(merchant).to have_key(:data)
      end
    end
  end
end
