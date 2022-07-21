require 'rails_helper'

RSpec.describe ItemFacade do 
  let!(:items) { ItemFacade.merchant_items(1) }
  let!(:item) { ItemFacade.get_item(4) }

  it 'creates poro for items' do 
    expect(items.first).to be_a(Item)
  end

  it 'creates poro for one item' do 
    expect(item).to be_a(Item)
  end
end