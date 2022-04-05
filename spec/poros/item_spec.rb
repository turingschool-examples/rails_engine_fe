require 'rails_helper'

RSpec.describe Item do
  it 'builds a item object when data is passed in' do
    data = {"id": "0",
            "type": "item",
            "attributes": {
                "name": "The Item",
                "description": "Things here written.",
                "unit_price": '99.0',
                "merchant_id": '1'}
}
    @item = Item.new(data)

    expect(@item).to be_an_instance_of(Item)
    expect(@item.id).to eq(0)
    expect(@item.name).to eq("The Item")
    expect(@item.description).to eq("Things here written.")
    expect(@item.unit_price).to eq("99.0")
    expect(@item.merchant_id).to eq("1")
  end
end
