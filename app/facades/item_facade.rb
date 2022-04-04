class ItemFacade
  def self.item(item_id)
    Item.new(ItemService.one_item(item_id))
  end 

end