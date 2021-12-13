class ItemService

  def self.all_items
    response = Faraday.get("http://localhost:3000/api/v1/items")
    JSON.parse(response.body, symbolize_names: true)

  end

  def self.item(item_id)
    response = Faraday.get("http://localhost:3000/api/v1/items/#{item_id}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
