require 'rails_helper'

RSpec.describe MerchantsFacade do
  context 'class methods' do
    context '::get_all_merchants' do
      it 'returns a list of all merchants' do
        merchants = MerchantsFacade.get_all_merchants

        expect(merchants).to be_a Array

        merchants.each do |merch|
          expect(merch).to be_a Merchant
        end
      end
    end
  end
end 
