class MerchantService
  def self.get_all_merchants
    get_url("/api/v1/merchants/")
  end

  private
  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: "http://localhost:3000")
  end
end
