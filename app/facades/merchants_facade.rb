class MerchantsFacade 

  def self.all_merchants 
    data = MerchantsService.get_all_merchants 
    results = data[:data] 
    results.map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end
end