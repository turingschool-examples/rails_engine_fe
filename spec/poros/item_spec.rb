require 'rails_helper'

RSpec.describe Item do
  it 'item exists and has attribsutes' do
    data = {id: "2425", attributes: {name: "Item Excepture Rem", 
            description: "Perferendis reprehenderit fugiat sit eos. Corporis ipsum ut. Natus molestiae quia rerum fugit quis. A cumque doloremque magni.",
            unit_price: 476.82}
          }
    item1 = Item.new(data)

    expect(item1).to be_instance_of(Item)
    expect(item1.name).to eq("Item Excepture Rem")
    expect(item1.description).to eq("Perferendis reprehenderit fugiat sit eos. Corporis ipsum ut. Natus molestiae quia rerum fugit quis. A cumque doloremque magni.")
    expect(item1.unit_price).to eq(476.82)
  end
end