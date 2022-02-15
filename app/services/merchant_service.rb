class MerchantService

  def self.connection
    Faraday.new(url: 'http://localhost:3000/')
  end

  def self.all_merchants
    response = connection.get('api/v1/merchants')
    JSON.parse(response.body, symbolize_names: true)[:data]
  end

  def self.all_merchant_items(merchant_id)
    response = connection.get("/api/v1/merchants/#{merchant_id}/items")
    JSON.parse(response.body, symbolize_names: true)
  end
end
