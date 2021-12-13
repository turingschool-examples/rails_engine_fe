require 'rails_helper'

RSpec.describe 'Items Facade' do
  it 'gets a list of all items' do
    response = ItemsFacade.all_items

    expect(response.first).to be_a(Item)
  end

  it 'gets one item' do
    response = ItemsFacade.item_by_id(179)
require "pry"; binding.pry
    expect(response).to be_a(Item)
    expect(response.id).to eq(179)
    expect(response.name).to eq('Item Qui Veritatis')
  end
end
