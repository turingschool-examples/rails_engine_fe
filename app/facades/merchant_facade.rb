class MerchantFacade
  def self.merchants
    merchants = MerchantService.merchants
    
    merchants.map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def self.merchant_items(merchant_id)
    items = MerchantService.merchant_items(merchant_id)

    items.map do |item_data|
      Item.new(item_data)
    end
  end

  def self.find_merchant_name(merchant_id)
    MerchantService.find_merchant_name(merchant_id)[:data][:attributes][:name]
  end
end