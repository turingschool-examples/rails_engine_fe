class MerchantService

  def self.conn
    Faraday.new(url: 'http://localhost:3000')
  end

  def self.get_all_merchants
    response = conn.get('/api/v1/merchants')
    JSON.parse(response.body, symbolize_names: true)[:data]
  end

  def self.get_merchant(merchant_id)
    response = conn.get("/api/v1/merchants/#{merchant_id}")
    JSON.parse(response.body, symbolize_names: true)[:data]
  end

  def self.get_merchant_items(merchant_id)
    response = conn.get("/api/v1/merchants/#{merchant_id}/items")
    JSON.parse(response.body, symbolize_names: true)[:data]
  end
end