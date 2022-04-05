class ItemFacade
  def self.find_item(id)
    item_data = MerchantService.find_item(id)
    @item = Item.new(item_data[:data])
  end

  def self.all_items
    items = MerchantService.all_items
    items[:data].map do |item_data|
      Item.new(item_data)
    end
  end
end
