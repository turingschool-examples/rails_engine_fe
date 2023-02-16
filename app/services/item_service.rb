class ItemService
  def self.get_all_merchant_items(id)
    response = conn.get("api/v1/merchants/#{id}/items")
    JSON.parse(response.body, symbolize_names: true)
  end
  
  def self.get_all_items
    response = conn.get("api/v1/items")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_item(id)
    response = conn.get("api/v1/items/#{id}")
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def self.conn
    Faraday.new(url: "http://localhost:3000/")
  end
end
