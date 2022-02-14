class MerchantService
  def all_merchants
    response = conn.get("/api/v1/merchants")
    JSON.parse(response.body, symbolize_names: true)[:data]
  end

  def conn
    Faraday.new("https://localhost:3000") do |faraday|
  end
end
