class MerchantFacade
  def self.merchants
    MerchantService.get_merchants.map do |data|
      Merchant.new(data)
    end 
  end 

end 