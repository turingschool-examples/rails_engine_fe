require 'rails_helper'

RSpec.describe ItemFacade do
  it 'creates an array of item objects' do
    expect(ItemFacade.all_items).to be_an(Array)
    expect(ItemFacade.all_items.first).to be_an(Item)
    expect(ItemFacade.all_items.first.name).to be_a(String)
    expect(ItemFacade.all_items.first.description).to be_a(String)
    expect(ItemFacade.all_items.first.unit_price).to be_a(Float)
    expect(ItemFacade.all_items.first.id).to be_an(Integer)
  end

  it 'creates an array of item object details' do
    item_id = 7
    expect(ItemFacade.all_item_details(item_id)).to be_an(Item)
    expect(ItemFacade.all_item_details(item_id).id).to be_an(Integer)
    expect(ItemFacade.all_item_details(item_id).name).to be_an(String)
    expect(ItemFacade.all_item_details(item_id).description).to be_an(String)
    expect(ItemFacade.all_item_details(item_id).unit_price).to be_an(Float)
    expect(ItemFacade.all_item_details(item_id).merchant_id).to be_an(Integer)
  end
end
