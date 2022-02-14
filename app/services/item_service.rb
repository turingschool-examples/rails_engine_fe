class ItemService

  def self.conn
    Faraday.new(url: "http://localhost:3000")
  end

  def self.one_item(id)
    response = conn.get("/api/v1/items/#{id}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
