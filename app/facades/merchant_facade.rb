class MerchantFacade
  def self.get_merchants
    MerchantService.get_merchants
  end

  def self.get_merchant(id)
    MerchantService.get_merchant(id)
  end

  def self.get_merchant_items(id)
    MerchantService.get_merchant_items(id)
  end
end
