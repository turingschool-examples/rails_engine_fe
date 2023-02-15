class MerchantService
  def self.get_all_merchants
    response = conn.get('api/v1/merchants')
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_merchant(id)
    response = conn.get("api/v1/merchants/#{id}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: "http://localhost:3000/")
  end
end