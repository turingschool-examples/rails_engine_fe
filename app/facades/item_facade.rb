class ItemFacade
  def self.merchant_items(id)
    items = ItemService.get_merchant_items(id)

    items[:data].map do |item|
      ItemObject.new(item)
    end
  end

  def self.get_item(id)
    item = ItemService.get_show(id)
    ItemObject.new(item[:data])
  end
end
