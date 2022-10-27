# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ItemObject, :vcr, type: :object do
  describe 'Instantiation' do
    it 'can be instantiated' do
      item = EngineService.item(4)
      expect(ItemObject.new(item[:data])).to be_an_instance_of described_class
    end
  end

  describe 'Attributes' do
    it 'can return required attributes' do
      item = EngineService.item(4)
      item_attributes_obj(ItemObject.new(item[:data]))
    end
  end
end

def item_attributes_obj(item)
  expect(item.id).to be_an Integer
  expect(item.type).to eq 'item'
  expect(item.name).to be_an String
  expect(item.description).to be_an String
  expect(item.unit_price).to be_an Float
end
