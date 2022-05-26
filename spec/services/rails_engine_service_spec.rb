require 'rails_helper'

RSpec.describe 'rails engine service' do
  describe 'class methods' do
    it 'establishes a connection', :vcr do
      conn = RailsEngineService.conn
      expect(conn.class).to eq(Faraday::Connection)
    end

    it 'returns parsed json from an endpoint', :vcr do
      parsed = RailsEngineService.json('merchants/1')

      expect(parsed).to be_a(Hash)
      expect(parsed).to have_key(:data)
      expect(parsed[:data]).to have_key(:id)
      expect(parsed[:data]).to have_key(:type)
      expect(parsed[:data]).to have_key(:attributes)
    end
  end
end
