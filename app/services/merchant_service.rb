class MerchantService

  def self.conn
    conn = Faraday.new(url: "http://localhost:3000")
  end

  def self.all_merchants
    response = conn.get("/api/v1/merchants")

    json = JSON.parse(response.body, symbolize_names: true)
  end

  def self.one_merchant(merchant_id)
    response = conn.get("/api/v1/merchants/#{merchant_id}")

    json = JSON.parse(response.body, symbolize_names: true)
  end
end
