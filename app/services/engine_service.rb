class EngineService
  def self.connection
    conn = Faraday.new(url: "http://localhost:3000")
  end

  def self.get_url(url)
    connection.get(url)
  end

  def self.merchants
    JSON.parse(get_url("/api/v1/merchants").body, symbolize_names: true)
  end

  def self.merchant_items(merchant_id)
    JSON.parse(get_url("/api/v1/merchants/#{merchant_id}/items").body, symbolize_names: true)
  end
end