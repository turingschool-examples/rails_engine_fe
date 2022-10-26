require 'faraday'

class MerchantService
  
  def self.request_all_merchants
    response = Faraday.get("http://localhost:3000/api/v1/merchants")
    JSON.parse(response.body, symbolize_names: true)
  end
end