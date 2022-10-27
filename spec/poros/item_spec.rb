require 'rails_helper'

RSpec.describe Item do
  it 'exists and as attributes' do
    fake_data =  {
            id: 4,
            attributes: {
                name: "Item Nemo Facere"
            }}

    item = Item.new(fake_data)

    expect(item).to be_a(Item)
    expect(item.id).to eq(4)
    expect(item.name).to eq("Item Nemo Facere")
  end
end
