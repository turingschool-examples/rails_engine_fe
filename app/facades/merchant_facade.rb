class MerchantFacade
  def self.all_merchants
    merchants = RailsEngineService.get_merchants
    merchants.map do |merchant|
      Merchant.new(merchant)
    end
  end

  def self.merchants_items(merchant_id)
    items = RailsEngineService.get_merchants_items(merchant_id)
    items.map do |item|
      Item.new(item)
    end
  end
end
