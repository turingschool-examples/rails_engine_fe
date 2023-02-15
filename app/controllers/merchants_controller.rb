class MerchantsController < ApplicationController 

  def index 
    conn = Faraday.new(url: 'http://localhost:3000')
    response = conn.get("/api/v1/merchants")

    @merchants = JSON.parse(response.body, symbolize_names: true)
  end
end