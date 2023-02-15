require 'rails_helper'

RSpec.describe ItemService do
  it 'returns items response' do
    items = ItemService.get_items(1)

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
end