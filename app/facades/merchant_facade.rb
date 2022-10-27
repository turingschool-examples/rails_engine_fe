class MerchantFacade

  def self.merchants
    merchants_json = EngineService.merchants
    merchants_json[:data].map do |merchant|
      Merchant.new(merchant)
    end
  end
  
  def self.merchant_items(merchant_id)
    items_json = EngineService.merchant_items(merchant_id)
    items_json[:data].map do |item|
      Item.new(item)
    end
  end
end
