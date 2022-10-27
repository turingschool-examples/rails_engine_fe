require 'faraday'
require 'json'

class MerchantService
  
  def self.get_all_merchants
    response = self.conn.get('/api/v1/merchants')
    parse(response)
  end
  
  def self.get_merchant(merchant_id)
    response = self.conn.get("/api/v1/merchants/#{merchant_id}")
    parse(response)
  end

  private 

  def self.conn
    conn = Faraday.new(url: 'http://localhost:3000')
  end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end