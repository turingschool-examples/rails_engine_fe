require 'rails_helper'

RSpec.describe ItemFacade do
  it 'can return a collection of items for a merchant' do
    items_data = ItemFacade.merchant_items

    expect(items_data).to be_an(Array)
    expect(items_data[0]).to be_an(Item)
  end

  it 'can return a collection of all items' do
    items_data = ItemFacade.items_data

    expect(items_data).to be_an(Array)
    expect(items_data[0]).to be_an(Item)
  end

  it 'can return an item by id' do
    item = ItemFacade.item_data

    expect(item).to be_an(Item)
  end
end