class ItemFacade
  def self.all_items
    items = RailsEngineService.get_all_items
    items.map do |item|
      Item.new(item)
    end
  end

  def self.all_item_details(item_id)
    item_details = RailsEngineService.get_item_details(item_id)
    Item.new(item_details)
  end
end
