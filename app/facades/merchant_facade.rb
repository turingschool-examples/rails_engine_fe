class MerchantFacade 

  def self.merchant_info 
    merchants = MerchantService.merchant_data[:data]
    merchants.map do |info|
    Merchant.new(info)
    end 
  end

  def self.merchant_find(id)
    info = MerchantService.find_merchant(id)[:data]
    Merchant.new(info)
  end
end