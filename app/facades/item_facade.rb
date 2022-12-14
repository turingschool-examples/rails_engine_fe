class ItemFacade
  def self.get_item(id)
    json = ItemService.get_item(id)
    item = Item.new(json[:data])
  end

  def self.get_items
    json = ItemService.get_items
    items = json[:data].map do |item_data|
      Item.new(item_data)
    end
  end
end