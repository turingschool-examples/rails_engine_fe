require 'rails_helper'

RSpec.describe ItemService do
  it 'returns merchant items response' do
    items = ItemService.get_all_merchant_items(1)

    expect(items).to be_a(Hash)
    expect(items).to have_key(:data)
    expect(items[:data]).to be_a(Array)
    expect(items[:data][0]).to have_key(:id)

    expect(items[:data][0]).to have_key(:attributes)

    item_data = items[:data][0][:attributes]

    expect(item_data).to have_key(:name)
    expect(item_data).to have_key(:description)
    expect(item_data).to have_key(:unit_price)
  end

  it 'returns a response with all items' do
    items = ItemService.get_all_items 

    expect(items).to be_a(Hash)
    expect(items).to have_key(:data)
    expect(items[:data]).to be_a(Array)
    expect(items[:data][0]).to have_key(:id)

    expect(items[:data][0]).to have_key(:attributes)

    item_data = items[:data][0][:attributes]

    expect(item_data).to have_key(:name)
    expect(item_data).to have_key(:description)
    expect(item_data).to have_key(:unit_price)
  end

  it 'returns response of item by id' do
    item = ItemService.get_item(4) 

    expect(item).to be_a(Hash)
    expect(item).to have_key(:data)
    expect(item[:data]).to be_a(Hash)

    expect(item[:data]).to have_key(:attributes)
    expect(item[:data][:attributes]).to be_a(Hash)

    items_data = item[:data][:attributes]    
    
    expect(items_data).to have_key(:name)
    expect(items_data[:name]).to be_a(String)

    expect(items_data).to have_key(:description)
    expect(items_data[:description]).to be_a(String)

    expect(items_data).to have_key(:unit_price)
    expect(items_data[:unit_price]).to be_a(Float)
  end
end