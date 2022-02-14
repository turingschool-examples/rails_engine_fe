require 'rails_helper'

RSpec.describe ItemFacade do

  it '::all_items' do
    items = ItemFacade.all_items

    expect(items).to be_an Array
    items.each do |item|
      expect(item).to be_a ItemPoro
      expect(item.description).to be_a String
      # expect(item.id).to be_an Integer
      expect(item.merchant_id).to be_an Integer
      expect(item.name).to be_a String
      expect(item.type).to eq('item')
      expect(item.unit_price).to be_a Float
    end
  end

  it 'can find items by merchant id' do
    merchant = MerchantFacade.all_merchants.first

    expect(ItemFacade.find_items(merchant.id.to_s).length).to eq(15)
  end

  it 'can find a specific item' do
    item = ItemFacade.all_items.last

    expect(ItemFacade.find_item(item.id).description).to eq(item.description)
  end

end
