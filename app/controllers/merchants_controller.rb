class MerchantsController < ApplicationController
  def index
    response = Faraday.get('http://localhost:3000/api/v1/merchants')
    body = response.body
    @merchants = JSON.parse(body, symbolize_names: true)
  end

  def show
    response = Faraday.get('http://localhost:3000/api/v1/merchants')
    body = response.body
    merchants = JSON.parse(body, symbolize_names: true)
    @merchant = merchants[:data][params[:id].to_i]
  end
end
