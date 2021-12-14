require 'rails_helper'

RSpec.describe ItemsFacade do
  it '.find_all', :vcr do
    items = ItemsFacade.find_all
    expect(items.first).to be_an Item
    expect(items.first.name).to eq("Item Nemo Facere")
    expect(items.first.description).to include("Sunt eum id eius magni consequuntur delectus veritatis")
    expect(items.second.unit_price).to eq(687.23)
  end

  it '.find_one' do

  end
end
