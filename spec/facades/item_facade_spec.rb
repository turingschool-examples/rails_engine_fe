require 'rails_helper'

RSpec.describe ItemsFacade do 
  it 'can return the collection of items' do 
    items = ItemsFacade.all_items

    expect(items).to be_an Array 
    items.each do |item|
      expect(item).to be_an_instance_of(Item)
    end
  end
end 