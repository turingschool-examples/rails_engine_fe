class MerchantFacade
  def self.all_merchants
    merchants_data = MerchantService.get_all_merchants

    merchants_data[:data].map { |data| Merchant.new(data) }
  end

  def self.merchant(merchant_id)
    merchant_data = MerchantService.get_merchant(merchant_id)[:data]

    Merchant.new(merchant_data)
  end
end
