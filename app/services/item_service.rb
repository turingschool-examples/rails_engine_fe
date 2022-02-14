class ItemService
  def self.all_items
    response = conn.get("/api/v1/items")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new("http://localhost:3000")
  end
end
