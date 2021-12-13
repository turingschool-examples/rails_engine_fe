class MerchantFacade

  def self.merchants
    merchants = MerchantService.all_merchants[:data]
    merchants.map do |merchant|
      Merchant.new(merchant)
    end
  end

  def self.merchant(merchant_id)
    found_merchant = MerchantService.one_merchant(merchant_id)[:data]
    Merchant.new(found_merchant)
  end

  def self.items(merchant_id)
    found_items = MerchantService.merchant_items(merchant_id)[:data]
    found_items.map do |item|
      Item.new(item)
    end
  end
end
