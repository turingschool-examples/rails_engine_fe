require 'rails_helper'

RSpec.describe MerchantsFacade do
  context 'class methods' do
    context '::get_all_merchants' do
      it 'returns a list of all merchants' do
        merchants = MerchantsFacade.get_all_merchants

        expect(merchants).to be_a Array

        merchants.each do |merch|
          require "pry"; binding.pry
          expect(merch).to be_a Merchant
        end
      end

      context '::get_merchant_items(id)' do
        it 'returns a list of all items belonging to a merchant' do
          items = MerchantsFacade.get_merchant_items(1)
          expect(items).to be_a Array

          items.each do |item|
            expect(item).to be_an Item
          end
        end
      end
    end
  end
end
