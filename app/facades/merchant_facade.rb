class MerchantFacade
  def self.merchants
    data = MerchantService.merchants
    data[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end
end