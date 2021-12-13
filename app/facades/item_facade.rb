class ItemFacade

  def self.items
    items = ItemService.all_items[:data]
    items.map do |item|
      Item.new(item)
    end
  end

  def self.item(item_id)
    item = ItemService.item(item_id)[:data]
    Item.new(item)
  end
end
