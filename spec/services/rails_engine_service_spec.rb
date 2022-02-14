require 'rails_helper'

RSpec.describe RailsEngineService do
  it 'can get a list of merchants' do
    expect(RailsEngineService.get_merchants).to be_an(Array)
    expect(RailsEngineService.get_merchants[0][:attributes][:name]).to be_a(String)
    expect(RailsEngineService.get_merchants[0][:id]).to be_a(String)
    expect(RailsEngineService.get_merchants[0][:id].first).to eq("1")
  end

  it 'can get a list of all a merchants items' do
    merchant_id = 7
    expect(RailsEngineService.get_merchants_items(merchant_id)).to be_an(Array)
    expect(RailsEngineService.get_merchants_items(merchant_id)[0][:attributes][:name]).to be_a(String)
    expect(RailsEngineService.get_merchants_items(merchant_id)[0][:attributes][:description]).to be_a(String)
    expect(RailsEngineService.get_merchants_items(merchant_id)[0][:attributes][:unit_price]).to be_a(Float)
    expect(RailsEngineService.get_merchants_items(merchant_id)[0][:attributes][:merchant_id]).to eq(7)
  end
end
