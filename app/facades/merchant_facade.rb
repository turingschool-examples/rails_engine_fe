class MerchantFacade
  def self.get_merchant(id)
    json = MerchantService.get_merchant(id)
    merchant = Merchant.new(json[:data])
  end

  def self.get_merchants
    json = MerchantService.get_merchants
    merchants = json[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end
end