class MerchantsFacade
  def self.get_merchants
    merchants_data = MerchantsService.get_merchants[:data]
    merchants_data.map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def self.get_merchant(merchant_id)
    merchant_data = MerchantsService.get_merchant(merchant_id)[:data]
    Merchant.new(merchant_data)
  end
end