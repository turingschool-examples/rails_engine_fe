class MerchantFacade
  def self.all_merchants
    merchants_array = (MerchantService.all_merchants)[:data]
    merchants_array.map do |merchant|
      Merchant.new(merchant)
    end
  end

  def self.find_merchant(id)
    merchant = MerchantService.find_merchant(id)
    Merchant.new(merchant[:data])
  end

  def self.merchant_items(id)
    merchant_items = MerchantService.merchant_items(id)
    merchant_items[:data].map do |item|
      Item.new(item)
    end
  end
end
