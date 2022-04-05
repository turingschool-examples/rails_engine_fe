class MerchantService

  def self.conn
    Faraday.new(url: "http://localhost:3000")
  end

  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_all_merchants
    get_url("/api/v1/merchants")
  end

  def self.get_merchant(id)
    get_url("/api/v1/merchants/#{id}")
  end

end
