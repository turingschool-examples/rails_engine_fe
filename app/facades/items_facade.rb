class ItemsFacade
  def self.items
    items_hash = ItemsService.items[:data]
    items_hash.map { |item_info| Item.new(item_info)}
  end

  def self.item(id)
    item_info = ItemsService.item(id)[:data]
    Item.new(item_info)
  end
end