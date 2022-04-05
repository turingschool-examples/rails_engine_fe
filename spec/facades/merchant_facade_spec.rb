require 'rails_helper'
RSpec.describe MerchantFacade do
  describe 'class methods' do
    it 'will return all merchants' do
      merchant_objects = MerchantFacade.all_merchants
      merchant_objects.each do |object|
        expect(object).to be_a Merchant
        expect(object.name).to_not be_nil
      end
    end

    it 'will return one merchant' do
      merchant = MerchantFacade.one_merchant(1)
      expect(merchant.count).to eq 1
      expect(merchant[:data][:id]).to eq('1')
      expect(merchant[:data][:type]).to eq('merchant')
      expect(merchant[:data][:attributes][:name]).to_not be_nil
    end

    it "will return all of a merchant's items" do
      merchant_items = MerchantFacade.all_merchant_items(1)
      merchant_items.each do |object|
        expect(object).to be_a Item
        expect(object.id).to_not be_nil
        expect(object.name).to_not be_nil
        expect(object.description).to_not be_nil
        expect(object.unit_price).to_not be_nil
        expect(object.merchant_id).to_not be_nil
      end
    end
  end
end
