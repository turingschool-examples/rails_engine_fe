class MerchantFacade 
  
   def self.all_merchants
    json = MerchantService.all_merchants

    @merchants = json[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def self.merchant_info(id)
    json = MerchantService.merchant_info(id)

    @merchant = Merchant.new(json[:data])
  end

  def self.merchant_items(merchant_id)
    json = MerchantService.merchant_items(merchant_id)
    @merchant = merchant_info(merchant_id)
    @items = json[:data].map do |item|
      Item.new(item)
    end
  end

  def self.find_all_merchants(query)
    json = MerchantService.find_all_merchants(query)
    
    @merchants = json[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end
end