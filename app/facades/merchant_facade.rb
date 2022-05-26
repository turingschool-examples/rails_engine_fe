class MerchantFacade
  def self.all_merchants
    merchants_data = MerchantService.get_all_merchants

    merchants_data[:data].map { |data| Merchant.new(data) }
  end

  def self.merchant(merchant_id)
    merchant_data = MerchantService.get_merchant(merchant_id)[:data]

    Merchant.new(merchant_data)
  end

  def self.merchant_items(merchant_id)
    items_data = MerchantService.get_merchant_items(merchant_id)

    items_data[:data].map { |data| Item.new(data) }
  end
end
