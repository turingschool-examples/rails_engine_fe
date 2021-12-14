class ItemFacade 
  class << self
    def get_item(item_id)
      ItemService.get_single_item(item_id)
    end 
  end 
end 