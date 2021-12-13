class MerchantService
  def self.merchants
   conn = Faraday.new(url: "http://localhost:3000") 
    response = conn.get("/api/v1/merchants")

    JSON.parse(response.body, symbolize_names: true)[:data]
  end

  def self.merchant_items(merchant_id)
    conn = Faraday.new(url: "http://localhost:3000") 
    response = conn.get("/api/v1/merchants/#{merchant_id}/items")
    
    JSON.parse(response.body, symbolize_names: true)[:data]
  end
end