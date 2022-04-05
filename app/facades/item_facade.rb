class ItemFacade
  def self.find_item(id)
    item_data = MerchantService.find_item(id)
    @item = Item.new(item_data[:data])
  end
end
