class MerchantFacade 
  def self.create_all_merchants 
    merchants = MerchantService.get_all_merchants
    merchants.map do |merchant| 
      Merchant.new(merchant)
    end
  end

  def self.create_merchant_search(merchant_id)
    response = MerchantService.get_merchant(merchant_id)
    Merchant.new(response)
  end
end