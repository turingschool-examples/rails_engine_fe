class MerchantFacade

  def self.find_merchants
    merchants = MerchantService.get_merchants
    results = merchants[:data]
    #require "pry"; binding.pry
    results.map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def self.find_one_merchant(merchant_id)
    merchant = MerchantService.get_one_merchant(merchant_id)
    Merchant.new(merchant_data)
  end
end
