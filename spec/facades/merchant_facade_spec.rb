require 'rails_helper'

RSpec.describe MerchantFacade, type: :facade do
  context 'class methods' do
    describe '::merchants_list' do
      it 'returns array of Merchant objects' do
        merchants = MerchantFacade.merchants_list

        expect(merchants).to be_a(Array)
        expect(merchants.first).to be_a(Merchant)
      end
    end

    describe '::merchant' do
      it 'returns a specific merchant' do
        merchant = MerchantFacade.merchant(1)

        expect(merchant).to be_a(Merchant)
        expect(merchant.id.to_i).to eq(1)
        expect(merchant.name).to eq('Schroeder-Jerde')
      end
    end

    describe '::merch_items' do
      it 'returns a merchants items objects' do
        items = MerchantFacade.merch_items(1)

        expect(items.first).to be_a(Item)
        expect(items.count).to eq(15)
      end
    end

    describe '::found_merchant' do
      it 'returns merchant found by name fragment' do
        merchant = MerchantFacade.found_merchant('iLl')

        expect(merchant).to be_a(Merchant)
        expect(merchant.id.to_i).to eq(28)
        expect(merchant.name).to eq('Schiller, Barrows and Parker')
      end
    end
  end
end
