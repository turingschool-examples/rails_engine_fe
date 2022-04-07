class ItemFacade
  class << self
    def merchant_items(id)
      items = MerchantService.merchant_items(id)

      items[:data].map do |item|
        Item.new(item)
      end
    end
  end
end
