require 'rails_helper'

describe 'Item Facade' do
  it 'can see a list of all items' do
    VCR.use_cassette('items') do
      items = ItemFacade.items_all
      expect(items).to be_an(Array)
      expect(items.count).to eq(26)
    end
  end

  it 'can see one merchant' do
    VCR.use_cassette('item_by_id') do
      item = ItemFacade.find_item(4)
      expect(item).to be_a(Item)
    end
  end
end
