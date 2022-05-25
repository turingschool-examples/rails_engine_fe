class MerchantsController < ApplicationController
  def index
    conn = Faraday.new(url: 'http://localhost:3000/')
    response = conn.get('api/v1/merchants')
    data = JSON.parse(response.body, symbolize_names: true)
    @merchants = data[:data]
  end

  def show
    conn = Faraday.new(url: 'http://localhost:3000/')
    response1 = conn.get("api/v1/merchants/#{params[:id]}")
    response2 = conn.get("api/v1/merchants/#{params[:id]}/items")
    data1 = JSON.parse(response1.body, symbolize_names: true)
    data2 = JSON.parse(response2.body, symbolize_names: true)
    @items = data2[:data]
    @merchant = data1[:data][:attributes]
    binding.pry
  end
end