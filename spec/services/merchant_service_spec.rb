require 'rails_helper'

RSpec.describe MerchantService do
  context ' class methods ' do
    context '.all_merchants' do
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
    end
  end
end
