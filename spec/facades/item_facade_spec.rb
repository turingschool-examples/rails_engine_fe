require 'rails_helper'

RSpec.describe ItemFacade do 
  it '#items', :vcr do 
    items = ItemFacade.items
    expect(items).to be_an Array
    expect(items).to all(be_a Item)
  end
end