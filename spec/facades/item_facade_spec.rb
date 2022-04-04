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

    
  end
end 