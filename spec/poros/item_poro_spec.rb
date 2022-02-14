require 'rails_helper'

RSpec.describe ItemPoro do

  it 'exists' do
    attributes = {
      id: Faker::Number.number(digits: 1),
      type: 'item',
      attributes: {
        name: Faker::Lorem.characters(number: 5),
        description: Faker::Lorem.paragraph(sentence_count: 3),
        unit_price: Faker::Number.decimal(l_digits: 2),
        merchant_id: Faker::Number.number(digits: 1)
      }
    }

    item = ItemPoro.new(attributes)

    expect(item).to be_an ItemPoro
    expect(item.type).to eq('item')
    expect(item.id).to eq(attributes[:id])
    expect(item.name).to eq(attributes[:attributes][:name])
    expect(item.description).to eq(attributes[:attributes][:description])
    expect(item.unit_price).to eq(attributes[:attributes][:unit_price])
    expect(item.merchant_id).to eq(attributes[:attributes][:merchant_id])
  end

end
