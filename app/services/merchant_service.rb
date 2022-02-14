class MerchantService

  def self.get_all_merchants
    response =  Faraday.get('http://localhost:3000/api/v1/merchants')
    parsed = JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_merchant(id)
    response =  Faraday.get("http://localhost:3000/api/v1/merchants/#{id}")
    parsed = JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_merchant_items(id)
    response =  Faraday.get("http://localhost:3000/api/v1/merchants/#{id}/items")
    parsed = JSON.parse(response.body, symbolize_names: true)[:data]
  end
end