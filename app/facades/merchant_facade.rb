class MerchantFacade
  def self.merchants
    MerchantService.get_merchants.map do |data|
      Merchant.new(data)
    end 
  end 

  def self.merchant(id)
    Merchant.new(MerchantService.get_merchant(id))
  end 

  def self.merchant_items(merchant_id)
    MerchantService.get_merchant_items(merchant_id) do |data|
      Item.new(data)
    end 
  end

end 