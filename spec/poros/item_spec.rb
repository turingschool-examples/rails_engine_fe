require 'rails_helper'

RSpec.describe Item do

  it 'has_attributes' do
    data = {
      id: 1,
      attributes: {
        name: 'item_name',
        description: 'description1',
        unit_price: 100.0,
      }
    }

    item = Item.new(data)
    expect(item).to be_an_instance_of(Item)
  end
end
