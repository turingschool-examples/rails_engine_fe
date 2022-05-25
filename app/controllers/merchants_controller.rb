class MerchantsController < ApplicationController
  def index
    conn = Faraday.new(url: 'http://localhost:3000/')
    response = conn.get('api/v1/merchants')
    data = JSON.parse(response.body, symbolize_names: true)
    @merchants = data[:data]
  end
end