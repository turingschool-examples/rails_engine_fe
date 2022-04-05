class ItemFacade
  def self.get_items
    ItemService.get_items
  end

  def self.get_item(id)
    ItemService.get_item(id)
  end
end 
