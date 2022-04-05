class MerchantFacade
  def self.all_merchants
    merchants_data = MerchantService.get_all_merchants
    merchants_data[:data].map do |merchant|
      Merchant.new(merchant)
    end
  end

  def self.one_merchant(id)
    merchant = MerchantService.get_one_merchant
  end

  def all_merchant_items(id)
    all_items = MerchantService.get_all_merchant_items
  end
end
