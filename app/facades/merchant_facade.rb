class MerchantFacade 
  def self.get_merchants
    json = MerchantService.get_merchants
    json[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def self.get_merchants_items(id)
    json = MerchantService.get_merchants_items(id)
    json[:data].map do |item_data|
      Item.new(item_data)
    end
  end
end
