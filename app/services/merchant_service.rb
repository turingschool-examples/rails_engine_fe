require 'faraday'
require 'json'

class MerchantService

  def self.conn
    Faraday.new(url: 'http://localhost:3000/')
  end

  def self.all_merchants
    response = conn.get("api/v1/merchants")
    body = JSON.parse(response.body, symbolize_names: true)
  end

  def self.one_merchant(id)
   response = conn.get("api/v1/merchants/#{id}")
   body = JSON.parse(response.body, symbolize_names: true)[:data]
  end
end
