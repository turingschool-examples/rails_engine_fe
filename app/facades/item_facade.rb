class ItemFacade
  def self.all_items_for_merchant(merchant_id)
    json_data = ItemService.all_items(merchant_id)
    items = json_data[:data].map do |item|
      Item.new(item)
    end
  end
end
