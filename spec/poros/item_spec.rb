require "rails_helper"

RSpec.describe Item do
  it 'exists' do
    attrs = {attributes:{
              id: "999",
              name: "Coolest thing you've seen",
              unit_price: "3.0",
              description: "suh cool",
              merchant_id: "999"
            }}
    item = Item.new(attrs)
    expect(item.name).to eq("Coolest thing you've seen")
    expect(item.description).to eq("suh cool")
  end
end
