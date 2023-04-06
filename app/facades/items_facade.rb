class ItemsFacade
  def self.get_merchant_items(merchant_id)
    items_data = ItemsService.get_merchant_items(merchant_id)[:data]
    items_data.map do |item_data|
      Item.new(item_data)
    end
  end

  def self.get_item(item_id)
    item_data = ItemsService.get_item(item_id)[:data]
    Item.new(item_data)
  end

  def self.get_items
    items_data = ItemsSerice.get_items[:data]
    items_data.map do |item_data|
      Item.new(item_data)
    end
  end
end