require 'rails_helper'

RSpec.describe 'The Item Facade' do 
  context 'Class Methods' do
    it '.item' do 
      VCR.use_cassette('item') do 
        one_item = ItemFacade.item("4")

        expect(one_item).to be_an(Item)
        expect(one_item.id).to eq("4")
        expect(one_item.name).to be_an(String)
        expect(one_item.description).to be_an(String)
        expect(one_item.unit_price).to be_an(Float)
      end 
    end
  end 
end