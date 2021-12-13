require 'rails_helper'

RSpec.describe 'Item Service' do
  it 'can get all merchants' do
    items = ItemService.all_items[:data]

    expect(items).to be_a(Array)
    expect(items.count).to eq(2508)
    items.each do |item|
      expect(item).to have_key(:attributes)
      expect(item[:attributes][:name]).to be_a(String)
      expect(item[:attributes][:description]).to be_a(String)
      expect(item[:attributes][:unit_price]).to be_a(Float)
      expect(item[:attributes][:merchant_id]).to be_a(Integer)
    end
  end

  it 'can return a single item' do
    item = ItemService.item(100)[:data]

    expect(item).to have_key(:attributes)
    expect(item[:attributes][:name]).to be_a(String)
    expect(item[:attributes][:description]).to be_a(String)
    expect(item[:attributes][:unit_price]).to be_a(Float)
    expect(item[:attributes][:merchant_id]).to be_a(Integer)
  end
end
