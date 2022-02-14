require 'rails_helper'

RSpec.describe ItemService do
  context ' class methods ' do
    context '.all_items' do
      it 'returns all items for a given merchant' do
        merchant_id = 1
        all_items = ItemService.all_items(merchant_id)
        
        expect(all_items).to be_a Hash
        expect(all_items[:data]).to be_an Array

        all_items[:data].each do |item|
          expect(item).to have_key(:id)
          expect(item[:id].to_i).to be_an(Integer)

          expect(item[:attributes]).to have_key(:name)
          expect(item[:attributes][:name]).to be_a(String)

          expect(item[:attributes]).to have_key(:description)
          expect(item[:attributes][:description]).to be_a(String)

          expect(item[:attributes]).to have_key(:unit_price)
          expect(item[:attributes][:unit_price]).to be_a(Float)

          expect(item[:attributes]).to have_key(:merchant_id)
          expect(item[:attributes][:merchant_id]).to be_a(Integer)
          expect(item[:attributes][:merchant_id]).to eq(1)
        end
      end
    end
  end
end
