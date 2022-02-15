require 'rails_helper'

RSpec.describe ItemService do 

  context "class methods" do 

    it '.items' do
      items_data = ItemService.items[:data]

      expect(items_data).to be_an Array

      expect(items_data.first).to be_a Hash

      first_item = items_data.first

      expect(first_item).to have_key :id
      expect(first_item).to have_key :type
      expect(first_item).to have_key :attributes
      expect(first_item[:attributes]).to have_key :name 
    end

    it ".item" do 
      item = ItemService.item(5)
      
      expect(item).to be_a Hash
      expect(item[:data]).to have_key :id
      expect(item[:data]).to have_key :attributes
      expect(item[:data][:attributes]).to have_key :name
      expect(item[:data][:attributes]).to have_key :unit_price
      expect(item[:data][:attributes]).to have_key :description
      expect(item[:data][:attributes]).to have_key :merchant_id
    end

  end


end
