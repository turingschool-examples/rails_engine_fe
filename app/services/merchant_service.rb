class MerchantService

  def self.connection
    Faraday.new(url: 'http://localhost:3000/api/v1/')
  end

  def self.merchants
    response = connection.get('merchants')

    JSON.parse(response.body, symbolize_names: true)
  end
end
