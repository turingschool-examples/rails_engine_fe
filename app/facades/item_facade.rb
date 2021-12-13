class ItemFacade
  def self.items
    items = ItemService.items
    
    items.map do |item_data|
      Item.new(item_data)
    end
  end

  def self.item(item_id)
    item_data = ItemService.item(item_id)
    Item.new(item_data)
  end
end