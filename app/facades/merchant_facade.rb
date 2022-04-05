class MerchantFacade

  def self.merchant_index
    details_data = MerchantService.get_all_merchants
    Merchant.new(details_data)
  end

  def self.merchant_show(id)
    details_data = MerchantService.get_merchant(id)
    binding.pry
    AMerchant.new(details_data)
  end

end
