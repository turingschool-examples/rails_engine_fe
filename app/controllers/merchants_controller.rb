class MerchantsController < ApplicationController
  def index
    conn = Faraday.new(url: "http://localhost:3000") do |faraday|
    end

    response = conn.get("/api/v1/merchants")

    json = JSON.parse(response.body, symbolize_names: true)
    merchants = json[:data]
    @merch_names = merchants.map do |merchant_data|
      Merchant.new(merchant_data)
    end
    # binding.pry
  end

  def show

  end
end
