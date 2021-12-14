class ItemsFacade
  def self.all_items
    json = ItemService.all_items
    json.map do |result|
      Item.new(result)
    end
  end

  def self.item_details(id)
    results = ItemService.item_details(id)
    Item.new(results)
  end
end
