require 'rails_helper'

RSpec.describe 'Item Facade' do
  it 'creates item poros' do
    items = ItemFacade.items

    expect(items).to be_a(Array)
    expect(items.count).to eq(2508)
    items.each do |item|
      expect(item).to be_a(Item)
    end
  end

  it 'creates a single item poro' do
    item = ItemFacade.item(100)
    expect(item).to be_a(Item)
  end
end
