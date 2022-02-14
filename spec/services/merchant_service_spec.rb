require 'rails_helper'
RSpec.describe MerchantService do
  let(:merchant_service) { MerchantService }

  describe '.get_merchants' do
    it 'returns a list of merchants' do
      VCR.use_cassette('mercahnts_index') do
        get_merchants = merchant_service.get_merchants

        expect(get_merchants).to be_a(Hash)
        expect(get_merchants[:data]).to be_a(Array)
        expect(get_merchants[:data].first).to have_key(:attributes)
      end
    end
  end

  describe '.get_items' do
    it 'returns a list of items' do
      VCR.use_cassette('merchant_show') do
        get_items = merchant_service.get_items(1)

        expect(get_items).to be_a(Hash)
        expect(get_items[:data]).to be_a(Array)
        expect(get_items[:data].first).to have_key(:attributes)
      end
    end
  end
end
