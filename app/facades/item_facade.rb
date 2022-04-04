class ItemFacade 

  def self.all_items
    json = ItemService.all_items

    @items = json[:data].map do |item_data|
      Item.new(item_data)
    end
  end

  def self.item_info(id)
    json = ItemService.item_info(id)

    @item = Item.new(json[:data])
  end

  def self.item_merchant(item_id)
    json = ItemService.item_merchant(item_id)
    @item = item_info(item_id)
    @merchant = Merchant.new(json[:data])
  end
end