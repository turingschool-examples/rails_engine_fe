class MerchantService
  class << self 
    def get_all_merchants
      response = conn.get('api/v1/merchants')
      parse_data(response)
    end 

    def get_merchant_name(merchant_id)
      response = conn.get("api/v1/merchants/#{merchant_id}")
      parse_data(response)
    end 

    def get_merchant_items(merchant_id)
      response = conn.get("api/v1/merchants/#{merchant_id}/items")
      parse_data(response)
    end 

    private 
    def conn 
      Faraday.new('http://localhost:3000/')
    end 

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: :true)
    end 
  end 
end 