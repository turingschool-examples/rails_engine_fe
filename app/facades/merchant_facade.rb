class MerchantFacade
  def self.merchants
    @merchants = MerchantService.all_merchants
    @merchants.map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end
end
