class MerchantService
  def self.merchants
    content = conn.get("/api/v1/merchants")
    merchants = (parse_response(content))[:data]
    merchants.map do |merchant|
      {name: merchant[:attributes][:name], id: merchant[:id]}
    end
  end

  def self.merch_items(id)
    content = conn.get("/api/v1/merchants/#{id}/items")
    items = (parse_response(content))[:data]
    items.map do |item|
      {name: item[:attributes][:name], id: item[:id]}
    end
  end

  def self.parse_response(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: "http://localhost:3000")
  end
end
