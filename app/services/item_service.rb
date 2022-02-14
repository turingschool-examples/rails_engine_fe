class ItemService
  def get_all_items
    response = Faraday.get("http://localhost:3000/api/v1/items")
    parsed = JSON.parse(response.body, symbolize_names: true)
  end
end
