require 'rails_helper'

RSpec.describe MerchantFacade do
  context 'instancne methods' do
    context '#all_merchants' do
      it 'returns Merchant data', :vcr do
        merchant = MerchantFacade.new
        expect(merchant.all_merchants).to be_a(Array)

        merchant.all_merchants.each do |merchant|
          expect(merchant).to be_a(Merchant)
        end
      end
    end
  end
end
