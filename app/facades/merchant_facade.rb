class MerchantFacade
  def self.all_merchants
    json = MerchantService.all_merchants
    json[:data].map do |merchant|
      Merchant.new(merchant)
    end
  end

  def self.merchant_info(merchant_id)
    json = MerchantService.merchant_info(merchant_id)
    Merchant.new(json[:data])
  end

  def self.merchant_items(merchant_id)
    json = MerchantService.merchant_items(merchant_id)
    json[:data].map do |item|
      Item.new(item)
    end
  end
end
