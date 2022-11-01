class ItemFacade
 
  def self.one_item(item_id)
    item_data = ItemService.get_one_item(item_id)
    Item.new(item_data[:data])
  end
end
