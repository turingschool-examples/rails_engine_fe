class ItemService
  def self.get_merchant_items(id)
    url = "http://localhost:3000/api/v1/merchants/#{id}/items"
    response = Faraday.get(url)
    data = JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_show(id)
    url = "http://localhost:3000/api/v1/items/#{id}"
    response = Faraday.get(url)
    data = JSON.parse(response.body, symbolize_names: true)
  end
end
