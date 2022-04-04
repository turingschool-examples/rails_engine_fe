class MerchantService 
  class << self 
    def call_for_merchants 
      response = conn.get("/api/v1/merchants")
      parse_data(response)
    end 

    def call_for_a_merchant(merchant_id)
      response = conn.get("/api/v1/merchants/#{merchant_id}")
      parse_data(response)
    end 

    def call_for_items(merchant_id)
      response = conn.get("/api/v1/merchants/#{merchant_id}/items")
      parse_data(response)
    end 
    
    private 

    def conn 
      Faraday.new(url: "http://localhost:3000") 
    end 

    def parse_data(response)
      data = JSON.parse(response.body, symbolize_names: true)
    end 
  end 
end 