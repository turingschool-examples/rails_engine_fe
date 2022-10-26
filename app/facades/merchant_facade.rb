class MerchantFacade

  def self.all_merchants
    merchants = MerchantService.get_all_merchants
    merchants[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def self.one_merchant(merchant_id)
    merchant_data = MerchantService.get_one_merchant(merchant_id)
    Merchant.new(merchant_data[:data])
  end

  def self.merchant_items(merchant_id)
    items = MerchantService.get_merchant_items(merchant_id)
    items[:data].map do |item_data|
      Item.new(item_data)
    end
  end
end
