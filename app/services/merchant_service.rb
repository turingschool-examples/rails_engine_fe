class MerchantService
  def self.all_merchants
    response = Faraday.get("http://localhost:3000/api/v1/merchants")
    JSON.parse(response.body, symbolize_names: true)
  end
  
  def self.singular_merchant(id)
    response = Faraday.get("http://localhost:3000/api/v1/merchants/#{id}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.merchant_items(id)
    response = Faraday.get("http://localhost:3000/api/v1/merchants/#{id}/items")
    JSON.parse(response.body, symbolize_names: true)
  end
end