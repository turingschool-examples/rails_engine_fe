class StoreService
  def self.conn
    Faraday.new(url: 'http://localhost:3000')
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.merchants
    response = conn.get("/api/v1/merchants")
    parse_json(response)
  end

  def self.merchant(id)
    response = conn.get("/api/v1/merchants/#{id}")
    parse_json(response)
  end

  def self.merchant_items(merchant_id)
    response = conn.get("/api/v1/merchants/#{merchant_id}/items")
    parse_json(response)
  end
end