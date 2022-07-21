require 'rails_helper'

RSpec.describe ItemService do 
  let!(:items) { ItemService.find_merchant_items(1) }
  let!(:item) { ItemService.find_item(1) }
  it 'establishes connection for items' do 
    expect(items).to be_a(Hash)
  end

  it 'establishes connection for one item' do 
    expect(item).to be_a(Hash)
  end
end