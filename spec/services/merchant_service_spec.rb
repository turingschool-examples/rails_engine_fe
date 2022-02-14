require 'rails_helper'

RSpec.describe MerchantService do
  context ' class methods ' do
    context '.one_merchant' do
      it 'returns merchant data ' do
        all_merchants = MerchantService.all_merchants

        expect(all_merchants).to be_a Hash
        expect(all_merchants[:data]).to be_an Array

        all_merchants[:data].each do |merchant|
              expect(merchant).to have_key(:id)
              expect(merchant[:id].to_i).to be_an(Integer)

              expect(merchant[:attributes]).to have_key(:name)
              expect(merchant[:attributes][:name]).to be_a(String)
        end
      end
      it 'returns one merchant data ' do
        merchant_id = 1
        one_merchant = MerchantService.one_merchant(merchant_id)

        expect(one_merchant).to be_a Hash

        expect(one_merchant[:data]).to have_key(:id)
        expect(one_merchant[:data][:id].to_i).to be_an(Integer)

        expect(one_merchant[:data][:attributes]).to have_key(:name)
        expect(one_merchant[:data][:attributes][:name]).to be_a(String)

      end
    end
  end
end
