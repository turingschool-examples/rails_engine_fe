class ItemFacade 
  class << self
    def get_items 
      ItemService.get_all_items[:data].map do |item|
        Item.new(item)
      end 
    end 

    def get_item(item_id)
      item = ItemService.get_single_item(item_id)[:data]
      merchant = MerchantService.get_merchant_name(item[:attributes][:merchant_id])[:data]
      MerchantItem.new(merchant, item)
    end 
  end 
end 