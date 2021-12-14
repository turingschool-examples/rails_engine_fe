class ItemService
  def self.all_items
    content = conn.get("/api/v1/items")

    results = (parse_response(content.body))[:data]

    results.map do |item|
      Item.new(item)
    end
  end

  def self.item_details(id)
    content = conn.get("/api/v1/items/#{id}")

    results = (parse_response(content.body))[:data]

    Item.new(results)
  end

  def self.parse_response(response)
    JSON.parse(response, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: "http://localhost:3000")
  end
end
