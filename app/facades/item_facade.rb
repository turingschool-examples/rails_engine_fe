class ItemFacade
    def self.merchant_items(id)
        ItemService.merchant_items(id).map { |data| Item.new(data) } 
    end
end