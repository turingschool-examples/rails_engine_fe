require 'rails_helper'

RSpec.describe 'Service Spec' do
  describe '::merchants_index' do
    it 'returns a hash of merchants data' do
      data = RailsEngineService.merchants_index

      expect(data).to be_a Hash
      expect(data[:data]).to be_an Array
      expect(data[:data][0][:attributes][:name]).to eq('Schroeder-Jerde')
    end
  end

  describe '::merchant_show' do
    it 'returns data of one merchant' do
      data = RailsEngineService.merchant_show(1)
      
      expect(data).to be_a Hash
      expect(data[:data]).to be_a Hash
      expect(data[:data][:attributes][:name]).to eq('Schroeder-Jerde')
    end
  end

  describe '::merchants_items' do
    it 'returns data of one merchants items' do
      data = RailsEngineService.merchants_items(1)
      
      expect(data).to be_a Hash
      expect(data[:data]).to be_an Array
      expect(data[:data][0][:attributes][:name]).to eq('Item Nemo Facere')
    end
  end

  describe '::items_index' do
    it 'returns data of all the items' do
      data = RailsEngineService.items_index

      expect(data).to be_a Hash
      expect(data[:data]).to be_an Array
      expect(data[:data][0][:attributes][:name]).to eq('Item Nemo Facere')
    end
  end

  describe '::item_show' do
    it 'returns data of one of the items' do
      data = RailsEngineService.item_show(4)

      expect(data).to be_a Hash
      expect(data[:data]).to be_a Hash
      expect(data[:data][:attributes][:name]).to eq('Item Nemo Facere')
    end
  end
end