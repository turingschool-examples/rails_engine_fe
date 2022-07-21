class ItemFacade 

  def self.merchant_items(id)
    items = ItemService.find_merchant_items(id)[:data]
    items.map do |info|
    Item.new(info)
    end 
  end

  def self.get_item(id)
    info = ItemService.find_item(id)[:data]
    Item.new(info)
  end
end
