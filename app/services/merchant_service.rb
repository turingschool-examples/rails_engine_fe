require 'faraday'

class MerchantService
  
  def self.request_all_merchants
    response = Faraday.get("http://localhost:3000/api/v1/merchants")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.request_one_merchant(id)
    response = Faraday.get("http://localhost:3000/api/v1/merchants/#{id}")
    JSON.parse(response.body, symbolize_names: true)
  end
end