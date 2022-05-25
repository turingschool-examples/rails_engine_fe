class MerchantFacade
  # def service
  #   @_service ||= MerchantService.new
  # end

  def self.get_all_merchants
    service = MerchantService.new
    
    service.get_all_merchants.map do |merchant|
      Merchant.new(merchant)
    end
  end
  
  def self.find_by_id(id)
    service = MerchantService.new
    
    merchant = service.find_by_id(id)
    Merchant.new(merchant)
  end
  
  def self.merchant_items(id)
    service = MerchantService.new

    service.merchant_items(id).map do |item|
      Item.new(item)
    end
  end

end