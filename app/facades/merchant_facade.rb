class MerchantFacade
  def self.merchants
    results = MerchantService.get_all_merchants
    results[:data].map do |result|
      Merchant.new(id = result[:id].to_i, name = result[:attributes][:name])
    end
  end

  def self.merchant(id)
    result = MerchantService.get_merchant(id)
    Merchant.new(id = result[:data][:id].to_i, name = result[:data][:attributes][:name])
  end

  def self.merchant_items(id)
    result = MerchantService.get_merchant_items(id)
    result.map do |result|
      Item.new(result)
    end
  end
end