class ItemFacade
  def self.all_items
    items_data = StoreService.all_items
    items_data[:data].map do |item_data|
      Item.new(item_data)
    end
  end

  def self.merchant_items(merchant_id)
    items_data = StoreService.merchant_items(merchant_id)
    items_data[:data].map do |item_data|
      Item.new(item_data)
    end
  end
end
