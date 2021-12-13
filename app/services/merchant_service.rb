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

  def self.find_merchant_name(merchant_id)
    conn = Faraday.new(url: "http://localhost:3000") 
    response = conn.get("/api/v1/merchants/#{merchant_id}")
    
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.search_for_merchant(search_term)
    conn = Faraday.new(url: "http://localhost:3000") 
    response = conn.get("/api/v1/merchants/find_all?name=#{search_term}")
    
    JSON.parse(response.body, symbolize_names: true)
  end
end