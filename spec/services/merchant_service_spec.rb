require 'rails_helper'

RSpec.describe MerchantService do
  context '#get_merchants' do
    it "returns merchant data" do
      merchants = MerchantService.get_merchants

      expect(merchants).to be_a Array
      expect(merchants.length).to eq 100

      expect(merchants.first).to be_a Merchant
      expect(merchants.last).to be_a Merchant
    end
  end
  context '#get_merchant' do
    it "returns a single merchant" do
      merchant = MerchantService.get_merchant(1)

      expect(merchant).to be_a Merchant
      expect(merchant.name).to eq("Schroeder-Jerde")
    end
  end
  context '#get_merchant_items' do
    it "returns all items for that merchant" do
      items = MerchantService.get_merchant_items(1)

      expect(items).to be_a Array
      expect(items.length).to eq(15)
      expect(items.first).to be_a Item
      expect(items.last).to be_a Item
    end
  end
end
