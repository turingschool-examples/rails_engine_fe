class MerchantsFacade
  class << self
    def get_all_merchants
      merchants = MerchantService.all_merchants
      merchants.map do |merchant|
        Merchant.new(merchant)
      end
    end

    def get_merchant_items(id)
      items = MerchantService.merchant_items(id)
      items.map do |item|
        Item.new(item)
      end
    end
  end
end
