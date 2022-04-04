class ItemFacade

  def self.items 
    ItemService.all_items.map do |data|
      Item.new(data)
    end 
  end 

  def self.item(item_id)
    Item.new(ItemService.one_item(item_id))
  end 

end