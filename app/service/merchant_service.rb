class MerchantService
  def self.all_merchants
    response = parsed_response("/api/v1/merchants")
  end

  def self.merchant(merchant_id)
    response = parsed_response("/api/v1/merchants/#{merchant_id}")
  end

  def self.merchant_items(merchant_id)
    item_response = parsed_response("/api/v1/merchants/#{merchant_id}/items")
  end

  def self.conn
    Faraday.new(url: "http://localhost:3000")
  end

  def self.parsed_response(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)[:data]
  end
end
