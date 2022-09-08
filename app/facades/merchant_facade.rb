class MerchantFacade

  def self.create_merchant(merchant_id)
    response = MerchantService.get_merchant(merchant_id)
    Merchant.new(response)
  end
end 