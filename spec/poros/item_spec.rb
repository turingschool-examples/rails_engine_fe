require 'rails_helper'

RSpec.describe Item do 
  it 'exists with attributes' do 
    data = {
      :id => 1,
      :attributes => {
        :name =>"Ice Cream",
        :description =>"Delicious",
        :unit_price => 5.5,
        :merchant_id => 1
      }
    }

    item = Item.new(data)

    expect(item).to be_an(Item)
    expect(item.id).to eq(1)
    expect(item.name).to eq("Ice Cream")
    expect(item.description).to eq("Delicious")
    expect(item.unit_price).to eq(5.5)
    expect(item.merchant_id).to eq(1)
  end 
end 