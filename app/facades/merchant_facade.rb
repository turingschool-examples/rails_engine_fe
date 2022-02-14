class MerchantFacade
  def self.merchants
    json_data = MerchantService.all_merchants
    merchants = json_data[:data].map do |merchant|
      Merchant.new(merchant)
    end
  end

  def self.one_merchant(merchant_id)
    json_data = MerchantService.one_merchant(merchant_id)

    merchant = Merchant.new(json_data[:data])
  end
end
