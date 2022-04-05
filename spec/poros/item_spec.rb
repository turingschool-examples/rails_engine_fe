require 'rails_helper'
RSpec.describe Item do
  it 'exists with attribites' do
    item_data = {
            "id": "4",
            "type": "item",
            "attributes": {
                "name": "Item Nemo Facere",
                "description": "Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.",
                "unit_price": 42.91,
                "merchant_id": 1
            }
        }
   item_poro = Item.new(item_data)
   expect(item_poro).to be_an Item
   expect(item_poro.id).to eq(item_data[:id])
   expect(item_poro.name).to eq(item_data[:attributes][:name])
   expect(item_poro.description).to eq(item_data[:attributes][:description])
   expect(item_poro.unit_price).to eq(item_data[:attributes][:unit_price])
   expect(item_poro.merchant_id).to eq(item_data[:attributes][:merchant_id])
  end
end
