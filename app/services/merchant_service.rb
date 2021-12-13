class MerchantService

  def self.get_merchants
    conn = Faraday.new("http://localhost:3000")
    response = conn.get("/api/v1/merchants")

    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_one_merchant(merchant_id)
    conn = Faraday.new("http://localhost:3000")
    response = conn.get("/api/v1/merchants/#{merchant_id}")

    JSON.parse(response.body, symbolize_names: true)
  end
end
