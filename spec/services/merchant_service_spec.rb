require 'rails_helper'

RSpec.describe MerchantService do
  context 'instance methods' do
    context '.find_all_merchants' do
      it 'returns merchant data' do
        VCR.use_cassette('rails-engine_merchants_index') do
          merchant = MerchantService.new
          merchants = merchant.find_all_merchants
          
          expect(merchants).to be_a(Hash)

          merchant_data = merchants[:data]

          merchant_data.each do |data|
            expect(data).to have_key(:id)
            expect(data[:id]).to be_a(String)

            expect(data).to have_key(:type)
            expect(data[:type]).to eq('merchant')

            expect(data).to have_key(:attributes)
            expect(data[:attributes]).to be_a(Hash)

            merchant_attributes = data[:attributes]

            expect(merchant_attributes).to have_key(:name)
            expect(merchant_attributes[:name]).to be_a(String)
          end
        end
      end
    end
  end
end
