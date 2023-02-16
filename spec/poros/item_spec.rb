require 'rails_helper' 

RSpec.describe Item do 
  it 'exists and has attributes' do 
    data = {
        "id": "2425",
        "type": "item",
        "attributes": {
              "name": "Item Excepturi Rem",
              "description": "Perferendis reprehenderit",
              "unit_price": 476.82,
              "merchant_id": 99
        }
      }

    item = Item.new(data)

    expect(item).to be_an_instance_of(Item)
    expect(item.id).to eq(2425)
    expect(item.name).to eq("Item Excepturi Rem")
    expect(item.description).to eq("Perferendis reprehenderit")
    expect(item.unit_price).to eq(476.82)
  end
end