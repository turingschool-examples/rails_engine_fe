require 'rails_helper'
RSpec.describe ItemService do
  let(:item_service) { ItemService }

  describe '.get_item' do
    it 'returns a list of merchants', :vcr do
        get_item = item_service.get_item(4)
        expect(get_item).to be_a(Hash)
        expect(get_item[:data]).to be_a(Hash)
        expect(get_item[:data]).to have_key(:attributes)
      end
    end
  end
