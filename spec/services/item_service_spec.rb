require 'rails_helper'

RSpec.describe 'Item service' do
  describe 'happy path' do
    it 'can get all Item data', :vcr do
      response = ItemService.items
      
      expect(response).to be_an Array
      expect(response.first).to be_a Hash

      first_item_data = response.first

      expect(first_item_data).to have_key :id
      expect(first_item_data[:id]).to be_a String

      expect(first_item_data[:attributes]).to have_key :name
      expect(first_item_data[:attributes][:name]).to be_a String

      expect(first_item_data[:attributes]).to have_key :unit_price
      expect(first_item_data[:attributes][:unit_price]).to be_a Float

      expect(first_item_data[:attributes]).to have_key :description
      expect(first_item_data[:attributes][:description]).to be_a String
    end
  end

  describe 'happy path' do
    it "can get one item's data", :vcr do
      response = ItemService.item(2471)
      
      expect(response).to be_a Hash

      item_data = response

      expect(item_data).to have_key :id
      expect(item_data[:id]).to be_a String

      expect(item_data[:attributes]).to have_key :name
      expect(item_data[:attributes][:name]).to be_a String

      expect(item_data[:attributes]).to have_key :unit_price
      expect(item_data[:attributes][:unit_price]).to be_a Float

      expect(item_data[:attributes]).to have_key :description
      expect(item_data[:attributes][:description]).to be_a String
    end
  end
end