require 'rails_helper'

RSpec.describe ItemService do
  describe 'api endpoint' do
    it 'can get_one_item', vcr: { record: :new_episodes } do
      item_data = ItemService.get_one_item(179)

      expect(item_data).to be_a(Hash)
      expect(item_data).to have_key :data
      expect(item_data[:data]).to be_a(Hash)
      expect(item_data[:data]).to have_key :id
      expect(item_data[:data][:id]).to be_a(String)
      expect(item_data[:data]).to have_key :attributes
      expect(item_data[:data][:attributes]).to be_a(Hash)
      expect(item_data[:data][:attributes]).to have_key :name
      expect(item_data[:data][:attributes][:name]).to be_a(String)
      expect(item_data[:data][:attributes]).to have_key :description
      expect(item_data[:data][:attributes][:description]).to be_a(String)
      expect(item_data[:data][:attributes]).to have_key :unit_price
      expect(item_data[:data][:attributes][:unit_price]).to be_a(Float)
      expect(item_data[:data][:attributes]).to have_key :merchant_id
      expect(item_data[:data][:attributes][:merchant_id]).to be_a(Integer)
    end
  end
end