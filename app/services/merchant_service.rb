class MerchantService
  def self.all_merchants
    get_data('/api/v1/merchants')
  end

  private
  def self.conn
    Faraday.new(url: "http://localhost:3000")
  end

  def self.get_data(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)[:data]
  end
end
