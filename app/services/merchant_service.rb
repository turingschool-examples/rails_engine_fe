class MerchantService
  def self.conn
    Faraday.new(url: "http://localhost:3000/api/v1")
  end

  def self.all_merchants
    response = conn.get("merchants")
    json = JSON.parse(response.body, symbolize_names: true)
  end

  def self.find_merchant(id)
    response = conn.get("merchants/#{id}")
    json = JSON.parse(response.body, symbolize_names: true)
  end

  def self.merchant_items(id)
    response = conn.get("merchants/#{id}/items")
    json = JSON.parse(response.body, symbolize_names: true)
  end

end
