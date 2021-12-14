class ItemService
  def self.all_items(id)
    response = Faraday.get("http://localhost:3000/api/v1/merchants/#{id}/items")
    JSON.parse(response.body, symbolize_names: true)
  end
end