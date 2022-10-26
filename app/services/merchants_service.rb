require 'faraday'
require 'json'

class MerchantsService
  def self.merchants
    conn = Faraday.new(url: 'http://localhost:3000/api/v1/merchants')
    response = conn.get
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.merchant(id)
    conn = Faraday.new(url: "http://localhost:3000/api/v1/merchants/#{id}")
    response = conn.get
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.merchant_items(id)
    conn = Faraday.new(url: "http://localhost:3000/api/v1/merchants/#{id}/items")
    response = conn.get
    JSON.parse(response.body, symbolize_names: true)
  end
end