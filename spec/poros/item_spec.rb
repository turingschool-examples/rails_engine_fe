require 'rails_helper'

RSpec.describe Item do 
  let!(:items) { ItemFacade.merchant_items(1)}
  let!(:item) {ItemFacade.get_item(4) }

  it 'can get attributes for all items' do 
    expect(items.first.name).to eq("Item Nemo Facere")
  end

  it 'can get attributes for one item' do 
    expect(item.name).to eq("Item Nemo Facere")
    expect(item.description).to eq("Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.")
    expect(item.unit_price).to eq(42.91)
  end
end