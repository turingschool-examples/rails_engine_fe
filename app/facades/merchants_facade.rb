class MerchantsFacade 

  def self.all_merchants 
    data = MerchantsService.get_all_merchants 
    results = data[:data] 
    results.map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def self.merchant_items(merchant_id)
    data = MerchantsService.get_merchant_items(merchant_id)
    results = data[:data]
    results.map do |item_data|
      Item.new(item_data)
    end
  end
end