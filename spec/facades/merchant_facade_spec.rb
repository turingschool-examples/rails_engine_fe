require 'rails_helper'

RSpec.describe MerchantFacade do
  describe 'merchant calls' do
    it 'all_merchants' do
      merchants = MerchantFacade.all_merchants

      expect(merchants).to be_a(Array)

      merchants.each do |merchant|
        expect(merchant).to be_instance_of(Merchant)
      end
      expect(merchants[0].name).to eq("Schroeder-Jerde")
      expect(merchants[1].name).to eq("Klein, Rempel and Jones")
    end

    it 'one_merchant' do
      merchant = MerchantFacade.one_merchant(42)

      expect(merchant).to be_instance_of(Merchant)
      expect(merchant.id).to eq("42")
      expect(merchant.name).to eq("Glover Inc")
    end

    it "one_merchants_items" do
      items = MerchantFacade.one_merchants_items(99)

      expect(items).to be_a(Array)

      items.each do |item|
        expect(item).to be_instance_of(Item)
      end

      expect(items[0].name).to eq("Item Excepturi Rem")
      expect(items[0].description).to eq("Perferendis reprehenderit fugiat sit eos. Corporis ipsum ut. Natus molestiae quia rerum fugit quis. A cumque doloremque magni.")
      expect(items[0].unit_price).to eq(476.82)
      expect(items[0].merchant_id).to eq(99)
    end
  end
end