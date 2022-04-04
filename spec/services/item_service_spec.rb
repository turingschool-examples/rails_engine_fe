require 'rails_helper'

RSpec.describe ItemService do
  context 'class methods' do
    context '#all_items' do 
      it 'returns a list of all items' do 
        search = ItemService.all_items
        expect(search).to be_a Hash

        expect(search[:data]).to be_an Array
        item_data = search[:data].first

        expect(item_data).to have_key(:id)
        expect(item_data[:id]).to be_a(String)
        
        expect(item_data[:attributes]).to have_key(:merchant_id)
        expect(item_data[:attributes][:merchant_id]).to be_a(Integer)

        expect(item_data[:attributes]).to have_key(:name)
        expect(item_data[:attributes][:name]).to be_a(String)

        expect(item_data[:attributes]).to have_key(:description)
        expect(item_data[:attributes][:description]).to be_a(String)

        expect(item_data[:attributes]).to have_key(:unit_price)
        expect(item_data[:attributes][:unit_price]).to be_a(Float)
      end
    end
    context '#item_info(id)' do 
      it 'returns data for a single item' do 
        first_item = ItemFacade.all_items.first
        search = ItemService.item_info(first_item.id)

        expect(search).to be_a Hash

        expect(search.count).to eq(1)

        item_data = search[:data]

        expect(item_data).to have_key(:id)
        expect(item_data[:id]).to be_a(String)
        
        expect(item_data[:attributes]).to have_key(:merchant_id)
        expect(item_data[:attributes][:merchant_id]).to be_a(Integer)

        expect(item_data[:attributes]).to have_key(:name)
        expect(item_data[:attributes][:name]).to be_a(String)

        expect(item_data[:attributes]).to have_key(:description)
        expect(item_data[:attributes][:description]).to be_a(String)

        expect(item_data[:attributes]).to have_key(:unit_price)
        expect(item_data[:attributes][:unit_price]).to be_a(Float)
      end
    end
    context '#item_merchant(item_id)' do 
      xit 'returns the merchant info for a single item' do 
        first_item = ItemFacade.all_items.first
        search = ItemService.item_merchant(first_item.id)

        expect(search).to be_a Hash

        expect(search.count).to eq(1)

        merchant_data = search[:data]

        expect(merchant_data).to have_key(:id)
        expect(merchant_data[:id]).to be_a(String)
        
        expect(merchant_data[:attributes]).to have_key(:name)
        expect(merchant_data[:attributes][:name]).to be_a(String)
      end
    end
  end
end 