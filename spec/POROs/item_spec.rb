require 'rails_helper'

RSpec.describe Item do
  context 'initialization' do
    it 'is initialized with a hash' do
      data = {
        id: '1',
        attributes: {
          name: 'Pencil',
          description: 'writes things',
          unit_price: 50.50,
          merchant_id: 1
        }
      }

      item = Item.new(data)

      expect(item).to be_an Item
    end

    it 'has readable attributes' do
      data = {
        id: '1',
        attributes: {
          name: 'Pencil',
          description: 'writes things',
          unit_price: 50.50,
          merchant_id: 1
        }
      }

      item = Item.new(data)

      expect(item.id).to eq 1
      expect(item.name).to eq 'Pencil'
      expect(item.description).to eq 'writes things'
      expect(item.unit_price).to eq 50.50
      expect(item.merchant_id).to eq 1
    end
  end
end
