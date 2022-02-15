class ItemFacade
  def self.item_info(id)
    result = ItemService.get_item(id)[:data]
    ItemPoro.new(result)
  end
end
