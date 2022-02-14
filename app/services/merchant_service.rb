class MerchantService
  def self.all_merchants
    response = conn.get("/api/v1/merchants")
    JSON.parse(response.body, symbolize_names: true)[:data]
  end

  def self.conn
    Faraday.new("https://localhost:3000") do |faraday|
  end
end
