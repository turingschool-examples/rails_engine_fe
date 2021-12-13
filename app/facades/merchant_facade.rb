class MerchantFacade

  def self.find_merchants
    merchants = MerchantService.get_merchants
    results = merchants[:data]
    results.map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def self.find_one_merchant(merchant_id)
    data = MerchantService.get_one_merchant(merchant_id)
    Merchant.new(data[:data])
  end
end
