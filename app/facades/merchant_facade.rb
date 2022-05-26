class MerchantFacade
  def self.all_merchants
    MerchantService.get_all_merchants.map { |data| Merchant.new(data) }
  end

  def self.single_merchant(id)
    Merchant.new(MerchantService.get_single_merchant(id))
  end

  def self.merchant_items(id)
    MerchantService.get_merchant_items(id).map { |data| Item.new(data) }
  end
end
