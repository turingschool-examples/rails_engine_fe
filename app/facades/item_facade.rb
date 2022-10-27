class ItemFacade

 def self.merchant_items(id)
  items = ItemService.all_items(id)
   items.map do |data|
    Item.new(data)
   end
 end
end