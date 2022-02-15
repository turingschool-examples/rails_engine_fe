require 'rails_helper'

RSpec.describe ItemsFacade do
  context 'class methods' do
    context '::get_all_items' do
      it 'returns a list of all items' do
        items = ItemsFacade.get_all_items
        expect(items).to be_a Array

        items.each do |item|
          expect(item).to be_an Item
        end
      end
    end
  end
end
