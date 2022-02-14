class MerchantService

  def self.conn
    Faraday.new(url: "http://localhost:3000")
  end

  def self.merchants_info
    response = conn.get("/api/v1/merchants")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.merchant_items(id)
    response = conn.get("/api/v1/merchants/#{id}/items")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.one_merchant(id)
    response = conn.get("/api/v1/merchants/#{id}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
