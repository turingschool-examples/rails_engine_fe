class MerchantFacade

  def self.merchants
    merchants_json = MerchantService.merchants
    merchants_json[:data].map do |merchant|
      Merchant.new(merchant)
    end
  end
  
  def self.items(merchant_id)
    items_json = MerchantService.items(merchant_id)
    items_json[:data].map do |item|
      Item.new(item)
    end
  end
end
