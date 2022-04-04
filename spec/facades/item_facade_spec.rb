require 'rails_helper'

RSpec.describe ItemFacade do

  context 'class methods' do
    context '#all_items' do 
      before(:each) do 
        @all_items = ItemFacade.all_items
      end
      it 'returns an array of all items' do 
        expect(@all_items).to be_an Array
      end

      it 'creates item objects' do 
        expect(@all_items.first).to be_a Item
      end
    end

    context '#item_info(id)' do 
      it 'creates a single item object' do 
        item = ItemFacade.item_info(5)
        
        expect(item).to be_a Item
      end 
      
      it 'item has all attributes' do 
        item = ItemFacade.item_info(5)

        expect(item.id).to be_a String
        expect(item.id.nil?).to be false

        expect(item.merchant_id).to be_an Integer 
        expect(item.merchant_id.nil?).to be false 

        expect(item.name).to be_a String
        expect(item.name.nil?).to be false
        
        expect(item.description).to be_a String
        expect(item.description.nil?).to be false

        expect(item.unit_price).to be_a Float
        expect(item.unit_price.nil?).to be false 
      end
    end

    context '#item_merchant(item_id)' do 
      xit 'returns the merchant info for a single item' do 
        
      end
    end
  end
end 