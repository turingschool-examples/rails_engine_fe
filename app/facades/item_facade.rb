class ItemFacade
  def self.items_all
    item_data = MerchantService.items_list
    item_data[:data].map do |item|
      Item.new(item)
    end[0..25]
  end

  def self.find_item(search_id)
    item_data = MerchantService.item_by_id(search_id)
    data = item_data[:data]
    Item.new(data)
  end
end
