require 'rails_helper'

RSpec.describe RailsEngineFacade do
  describe 'merchant_list' do
    it 'returns merchant object array' do
      merchants = RailsEngineFacade.merchant_list

      expect(merchants).to be_an(Array)
      expect(merchants.first).to be_instance_of(Merchant)
    end
  end

  describe 'one_merchant' do
    it 'returns merchant by merchant_id' do
      merchant = RailsEngineFacade.one_merchant(1)

      expect(merchant).to be_instance_of(Merchant)
    end
  end

  describe 'merchant_item_list' do
    it 'returns merchant item object array' do
      merchant_items = RailsEngineFacade.merchant_item_list(1)

      expect(merchant_items).to be_an(Array)
      expect(merchant_items.first).to be_instance_of(Item)
    end
  end

  describe 'one_item' do
    it 'returns item by item id' do
      item = RailsEngineFacade.one_item(4)

      expect(item).to be_instance_of(Item)
    end
  end 
end
