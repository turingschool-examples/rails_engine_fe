require 'rails_helper'

RSpec.describe 'Item Facade' do
  it '.items' do
    item = ItemFacade.items.first

    expect(item).to be_an Item
  end

  it '.item' do
    item = ItemFacade.item(2471)
    
    expect(item).to be_an Item
  end
end