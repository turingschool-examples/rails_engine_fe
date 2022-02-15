class MerchantService

  def self.connection
    Faraday.new(url: 'http://localhost:3000/api/v1/')
  end

  def self.merchants
    response = connection.get('merchants')

    JSON.parse(response.body, symbolize_names: true)
  end

  def self.merchant(id)
    response = connection.get("merchants/#{id}")

    JSON.parse(response.body, symbolize_names: true)
  end

  def self.merchants_items(merchant_id)
    response = connection.get("merchants/#{merchant_id}/items")

    JSON.parse(response.body, symbolize_names: true)
  end
end
