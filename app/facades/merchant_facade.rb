class MerchantFacade
  class << self
    def all_merchants
      merchants = MerchantService.all_merchants[:data]

      merchants.map do |merchant|
        Merchant.new(merchant)
      end
    end
  end
end
