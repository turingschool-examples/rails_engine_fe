class ItemService
  def self.items
   conn = Faraday.new(url: "http://localhost:3000") 
    response = conn.get("/api/v1/items")

    JSON.parse(response.body, symbolize_names: true)[:data]
  end

  def self.item(item_id)
    conn = Faraday.new(url: "http://localhost:3000") 
    response = conn.get("/api/v1/items/#{item_id}")

    JSON.parse(response.body, symbolize_names: true)[:data]
  end
end