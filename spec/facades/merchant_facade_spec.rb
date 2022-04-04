require 'rails_helper'

RSpec.describe MerchantFacade do
  context 'class methods' do
    context '.all_merchants' do
      it 'creates merchant poros', :vcr do
        merchants = MerchantFacade.all_merchants

        expect(merchants).to be_a(Array)


        merchants.each do |merchant|
          expect(merchant).to be_an_instance_of(Merchant)
        end
      end
    end
  end
end
