class ItemFacade
  def self.merchant_items
    items_response = RailsEngineService.get_all_merchant_items(1)

    items_response[:data].map do |item|
      Item.new(item)
    end
  end

  def self.items_data
    items_response = RailsEngineService.get_all_items
    items_response[:data].map do |item|
      Item.new(item)
    end
  end

  def self.item_data
    item_data = RailsEngineService.get_item(4)[:data]
    item = Item.new(item_data)
  end
end