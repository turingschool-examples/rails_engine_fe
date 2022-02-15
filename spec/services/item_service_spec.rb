require 'rails_helper'

RSpec.describe ItemService, type: :service do
  context 'class methods' do
    describe '::conn' do
      it 'returns Faraday connection' do
        items = ItemService.conn

        expect(items).to be_a(Faraday::Connection)
      end
    end

    describe '::get_items' do
      it 'returns a hash of the items details' do
        items = ItemService.get_items

        expect(items).to be_a(Hash)
        expect(items[:data]).to be_a(Array)
  
        items[:data].each do |item|
          expect(item).to be_a(Hash)
          expect(item).to have_key(:id)
          expect(item[:id]).to be_an(String)
  
          expect(item).to have_key(:type)
          expect(item[:type]).to eq('item')
  
          expect(item[:attributes]).to have_key(:name)
          expect(item[:attributes][:name]).to be_a(String)
          
          expect(item[:attributes]).to have_key(:description)
          expect(item[:attributes][:description]).to be_a(String)

          expect(item[:attributes]).to have_key(:unit_price)
          expect(item[:attributes][:unit_price]).to be_a(Float)
        end
      end
    end

    describe '::get_item' do
      it 'returns a hash of an item detail' do
        item = ItemService.get_item(6)

        expect(item).to be_a(Hash)
        expect(item[:data]).to be_a(Hash)
  
        expect(item[:data]).to have_key(:id)
        expect(item[:data][:id]).to be_an(String)

        expect(item[:data]).to have_key(:type)
        expect(item[:data][:type]).to eq('item')

        expect(item[:data][:attributes]).to have_key(:name)
        expect(item[:data][:attributes][:name]).to be_a(String)
        expect(item[:data][:attributes][:name]).to eq('Item Provident At')

        expect(item[:data][:attributes]).to have_key(:description)
        expect(item[:data][:attributes][:description]).to be_a(String)
        expect(item[:data][:attributes][:description]).to eq('Numquam officiis reprehenderit eum ratione neque tenetur. Officia aut repudiandae eum at ipsum doloribus. Iure minus itaque similique. Ratione dicta alias asperiores minima ducimus nesciunt at.')

        expect(item[:data][:attributes]).to have_key(:unit_price)
        expect(item[:data][:attributes][:unit_price]).to be_a(Float)
        expect(item[:data][:attributes][:unit_price]).to eq(159.25)

        expect(item[:data][:attributes][:merchant_id]).to be_a(Integer)
        expect(item[:data][:attributes][:merchant_id]).to eq(1)
      end
    end

    describe '::get_item_merch' do
      it 'returns a hash of the item merchant data' do
        merchant = ItemService.get_item_merch(6) 

        expect(merchant).to be_a(Hash)
        expect(merchant[:data]).to be_a(Hash)
        expect(merchant[:data]).to have_key(:id)
        expect(merchant[:data][:id]).to be_an(String)
        expect(merchant[:data][:id].to_i).to eq(1)

        expect(merchant[:data]).to have_key(:type)
        expect(merchant[:data][:type]).to eq('merchant')

        expect(merchant[:data][:attributes]).to have_key(:name)
        expect(merchant[:data][:attributes][:name]).to be_a(String)
        expect(merchant[:data][:attributes][:name]).to eq('Schroeder-Jerde')
      end
    end
  end
end
