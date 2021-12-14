class MerchantsFacade
  class << self
    def all_merchants
      merchants = MerchantService.get_data('')

      merchants[:data].map do |merchant|
        Merchant.new(merchant)
      end
    end

    def merchant_by_id(id)
      merchant = MerchantService.get_data("#{id}")

      Merchant.new(merchant[:data])
    end

    def merchant_items(id)
      items = MerchantService.get_data("#{id}/items")

      items[:data].map do |item|
        Item.new(item)
      end
    end
  end
end
