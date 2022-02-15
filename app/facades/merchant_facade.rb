class MerchantFacade
  def self.merchants
    @merchants = MerchantService.all_merchants
    @merchants.map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def self.merchant(merchant_id)
    data = MerchantService.merchant(merchant_id)
    merchant = Merchant.new(data)
  end

  def self.items(merchant_id)
    all_items = MerchantService.merchant_items(merchant_id)
    all_items.map do |item|
      Item.new(item)
    end
  end
end
