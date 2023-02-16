class RailsEngineService
  def self.conn
    Faraday.new('http://localhost:3000/api/v1/')
  end

  def self.json_parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_all_merchants
    response = conn.get('merchants')
    json_parse(response)
  end

  def self.get_one_merchant(merchant_id)
    response = conn.get("merchants/#{merchant_id}")
    json_parse(response)
  end

  def self.get_one_merchants_items(merchant_id)
    response = conn.get("merchants/#{merchant_id}/items")
    json_parse(response)
  end
end