require 'rails_helper'

RSpec.describe ItemFacade do 
  it '#items', :vcr do 
    items = ItemFacade.items
    expect(items).to be_an Array
    expect(items).to all(be_a Item)
  end

  it '#item', :vcr do 
    item = ItemFacade.item(4)
    expect(item).to be_a Item
  end
end
