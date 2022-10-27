require 'rails_helper'

RSpec.describe Item do
  it 'exists and as attributes' do
    fake_data =  {
            id: 4,
            attributes: {
                name: "Item Nemo Facere",
                description: "Sunt eum id eius magni consequuntur delectus veritatis.
                Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.",
                unit_price: 42.91
            }}

    item = Item.new(fake_data)

    expect(item).to be_a(Item)
    expect(item.id).to eq(4)
    expect(item.name).to eq("Item Nemo Facere")
  end
end
