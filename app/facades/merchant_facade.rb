class MerchantFacade 
  def self.create_all_merchants 
    merchants = MerchantService.get_all_merchants
    merchants.map do |merchant| 
      Merchant.new(merchant)
    end
  end

  def self.create_merchant_search(id)
    response = MerchantService.get_merchant(id)
    Merchant.new(response)
  end
end