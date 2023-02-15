class MerchantService
  def self.get_merchants
    response = conn.get('api/v1/merchants')
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: "http://localhost:3000/")
  end
end