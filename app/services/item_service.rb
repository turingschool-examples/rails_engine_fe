class ItemService
  def self.get_url(endpoint)
    response = Faraday.get("http://localhost:3000/api/v1/#{endpoint}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_items
    attrs = ItemService.get_url("/items")
    @items = attrs[:data].map {|obj_data|Item.new(obj_data)}
  end

  def self.get_item(id)
    attrs = ItemService.get_url("/items/#{id}")
    Item.new(attrs[:data])
  end
end
