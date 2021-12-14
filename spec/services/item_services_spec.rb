require 'rails_helper'

RSpec.describe 'Rails-Engine item service' do 
  it 'can get all items' do
    response = ItemService.get_all_items 

    expect(response).to be_a(Hash)
    expect(response[:data]).to be_an(Array)

    first_item = response[:data][0]

    expect(first_item[:attributes][:name]).to be_a(String)
    expect(first_item[:attributes][:description]).to be_a(String)
    expect(first_item[:attributes][:unit_price]).to be_a(Float)
    expect(first_item[:attributes][:merchant_id]).to be_an(Integer)
  end 

  it 'can get one item by id' do
    response = ItemService.get_single_item(10)

    expect(response).to be_a(Hash)
    expect(response[:data]).to be_a(Hash)

    item = response[:data]

    expect(item[:attributes][:name]).to be_a(String)
    expect(item[:attributes][:description]).to be_a(String)
    expect(item[:attributes][:unit_price]).to be_a(Float)
    expect(item[:attributes][:merchant_id]).to be_an(Integer)
  end 
end