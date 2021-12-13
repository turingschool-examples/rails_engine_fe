require 'rails_helper'

RSpec.describe Item do
  it 'has attributes' do
    item = Item.new(item_data_for_test[:data][0])
    expect(item.name).to include("Item Nemo Facere")
    expect(item.description).to include("Sunt eum id eius magni consequuntur delectus")
    expect(item.unit_price).to eq(42.91)
  end
end
