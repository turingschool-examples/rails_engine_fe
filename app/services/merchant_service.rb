class MerchantService

  def self.get_merchants
    response = Faraday.get("http://localhost:3000/api/v1/merchants")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_merchants_items(id)
    response = Faraday.get("http://localhost:3000/api/v1/merchants/#{id}/items")
    JSON.parse(response.body, symbolize_names: true)
  end
end
