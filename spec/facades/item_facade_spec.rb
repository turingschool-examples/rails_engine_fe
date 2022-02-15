require 'rails_helper'

RSpec.describe ItemFacade do 


  it '.items' do 
    items = ItemFacade.items

    expect(items).to be_an Array 
    expect(items.first).to be_an Item
  end

  it '.item' do 
    item = ItemFacade.item(4)
    
    expect(item).to be_an Item 
  end

end
