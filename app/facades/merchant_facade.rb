class MerchantFacade
  def self.merchants
    data = EngineService.merchants
    data[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def self.merchant_items(merchant_id)
    data = EngineService.merchant_items(merchant_id)
    data[:data].map do |item_data|
      Item.new(item_data)
    end
  end
end