require 'rails_helper'

RSpec.describe Item do
  it 'exists and has attributes' do
    items = ItemFacade.items_data

    items.each do |item|
      expect(item.name).to be_a(String)
      expect(item.id).to be_a(String)
      expect(item.description).to be_a(String)
      expect(item.unit_price).to be_a(Float)
      expect(item.merchant_id).to be_a(Integer)
    end

    expect(items[0].name).to eq("Item Nemo Facere")
    expect(items[0].description).to eq("Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.")
    expect(items[0].unit_price).to eq(42.91)
    expect(items[0].merchant_id).to eq(1)
  end
end