class MerchantsFacade 
  
  def self.find_all_merchants
    results = MerchantService.get_all_merchants
    merchants = results[:data]
    merchants.map do |merchant|
      Merchant.new(merchant)
    end
  end

  def self.find_merchant(merchant_id)
    results = MerchantService.get_merchant(merchant_id)
    Merchant.new(results[:data])
  end
end