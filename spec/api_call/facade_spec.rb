require 'rails_helper'

RSpec.describe 'Facade methods' do
  describe '::merchants_index' do
    it 'returns an array of merchants' do
      merchants = MerchantFacade.merchants_index

      expect(merchants).to be_an Array
      expect(merchants.length).to eq(100)
    end
  end

  describe '::merchant_show' do
    it 'returns a merchant' do
      merchant = MerchantFacade.merchant_show(1)

      expect(merchant).to be_a Merchant
      expect(merchant.name).to eq('Schroeder-Jerde')
    end
  end

  describe '::merchants_items' do
    it 'returns an array of merchants items' do
      item = MerchantFacade.merchants_items(1).first

      expect(item).to be_an Item
      expect(item.name).to eq('Item Nemo Facere')
    end
  end

  describe '::items_index' do
    it 'returns an array of all items' do
      items = ItemFacade.items_index

      expect(items).to be_an Array
      expect(items[1]).to be_an Item
    end
  end

  describe '::items_show' do
    it 'returns the given item' do
      item = ItemFacade.item_show(4)

      expect(item).to be_an Item
      expect(item.name).to eq('Item Nemo Facere')
    end
  end
end