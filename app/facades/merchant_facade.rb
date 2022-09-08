class MerchantFacade

  def self.create_all_merchants
    merchants = MerchantService.get_all_merchants
    merchants.map do |merchant|
      Merchant.new(merchant)
    end
  end

  def self.create_merchant(merchant_id)
    merchant = MerchantService.get_merchant(merchant_id)
    Merchant.new(merchant)
  end
  
  def self.create_merchant_items(merchant_id)
    items = MerchantService.get_merchant_items(merchant_id)
    items[:data].map do |item|
      Item.new(item)
    end
  end  
end 