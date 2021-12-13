class MerchantService

  def self.all_merchants
    response = Faraday.get("http://localhost:3000/api/v1/merchants")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.one_merchant(merchant_id)
    response = Faraday.get("http://localhost:3000/api/v1/merchants/#{merchant_id}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.merchant_items(merchant_id)
    response = Faraday.get("http://localhost:3000/api/v1/merchants/#{merchant_id}/items")
    JSON.parse(response.body, symbolize_names: true)
  end
end
