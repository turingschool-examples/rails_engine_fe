class ItemFacade
  def self.items_data
    items_response = ItemService.get_all_merchant_items(1)

    items_response[:data].map do |item|
      Item.new(item)
    end
  end
end