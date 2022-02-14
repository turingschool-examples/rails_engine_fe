class MerchantFacade
  def self.merchants_info
    MerchantService.get_merchants[:data].map { |merchant_info| MerchantPoro.new(merchant_info) }
  end

  def self.item_info(id)
    MerchantService.get_items(id)[:data].map { |item_info| ItemPoro.new(item_info) }
  end

  def self.merchant_info(id)
    result = MerchantService.get_merchant(id)[:data]
    MerchantPoro.new(result)
  end
end
