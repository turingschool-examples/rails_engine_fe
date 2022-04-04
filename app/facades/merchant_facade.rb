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
    MerchantService.get_merchant_items(merchant_id).map do |data|
      Item.new(data)
    end 
  end

  def self.single_merchant_search(name)
    Merchant.new(MerchantService.one_merchant_search(name))
  end 

end 