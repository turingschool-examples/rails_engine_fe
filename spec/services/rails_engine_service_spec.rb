require 'rails_helper'

RSpec.describe RailsEngineService do
  it 'can get a list of merchants' do
    expect(RailsEngineService.get_merchants).to be_an(Array)
    expect(RailsEngineService.get_merchants[0][:id]).to be_a(String)
    expect(RailsEngineService.get_merchants[0][:id].first).to eq("1")
    expect(RailsEngineService.get_merchants[0][:attributes][:name]).to be_a(String)
  end

  it 'can get a list of all a merchants items' do
    merchant_id = 7
    expect(RailsEngineService.get_merchants_items(merchant_id)).to be_an(Array)
    expect(RailsEngineService.get_merchants_items(merchant_id)[0][:attributes][:name]).to be_a(String)
    expect(RailsEngineService.get_merchants_items(merchant_id)[0][:attributes][:description]).to be_a(String)
    expect(RailsEngineService.get_merchants_items(merchant_id)[0][:attributes][:unit_price]).to be_a(Float)
    expect(RailsEngineService.get_merchants_items(merchant_id)[0][:attributes][:merchant_id]).to eq(7)
  end

  it 'can get all items' do
    expect(RailsEngineService.get_all_items).to be_an(Array)
    expect(RailsEngineService.get_all_items[0][:id]).to be_a(String)
    expect(RailsEngineService.get_all_items[0][:attributes][:name]).to be_a(String)
    expect(RailsEngineService.get_all_items[0][:attributes][:description]).to be_a(String)
    expect(RailsEngineService.get_all_items[0][:attributes][:unit_price]).to be_a(Float)
  end

  it 'can get details for an item' do
    item_id = 7
    expect(RailsEngineService.get_item_details(item_id)).to be_a(Hash)
    expect(RailsEngineService.get_item_details(item_id)[:attributes][:name]).to be_a(String)
    expect(RailsEngineService.get_item_details(item_id)[:attributes][:description]).to be_a(String)
    expect(RailsEngineService.get_item_details(item_id)[:attributes][:unit_price]).to be_a(Float)
    expect(RailsEngineService.get_item_details(item_id)[:attributes][:merchant_id]).to be_an(Integer)
  end
end
