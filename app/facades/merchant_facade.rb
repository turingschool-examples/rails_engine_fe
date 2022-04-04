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

    @items = json[:data].map do |item|
      Item.new(item)
    end

    @merchant = merchant_info(attributes[:merchant_id])
  end
end