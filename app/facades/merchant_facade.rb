class MerchantFacade
  def self.get_all_merchants
    json = MerchantService.get_all_merchants
    json[:data].map do |merchant_result|
      Merchant.new(merchant_result)
    end
  end

  def self.get_merchants_items(id)
    json = MerchantService.get_a_merchants_items
    json[:data].map do |trung|
      Item.new(trung)
    end
  end

  def self.get_a_merchant(id)
    json = MerchantService.get_a_merchant(id)
    Merchant.new(json[:data])
  end
end
