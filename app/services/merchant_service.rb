class MerchantService

  def self.merchants
    response = conn.get('/api/v1/merchants')
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.items(merchant_id)
    response = conn.get("/api/v1/merchants/#{merchant_id}/items")
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def self.conn
    Faraday.new(url: 'http://localhost:3000')
  end
end
