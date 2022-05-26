class MerchantService
  def self.conn
    Faraday.new(url: "http://localhost:3000")
  end

  def self.get_all_merchants
    response = conn.get("/api/v1/merchants")
    parsed = JSON.parse(response.body, symbolize_names: true)
    parsed[:data]
  end

  def self.get_single_merchant(id)
    response = conn.get("/api/v1/merchants#{id}")
    parsed = JSON.parse(response.body, symbolize_names: true)
    parsed[:data]
  end

  def self.get_merchant_items(id)
    response = conn.get("/api/v1/merchants/#{id}/items")
    parsed = JSON.parse(response.body, symbolize_names: true)
    parsed[:data]
  end
end
