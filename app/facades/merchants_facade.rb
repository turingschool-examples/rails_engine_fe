class MerchantsFacade
  class << self
    def get_all_merchants
      merchants = MerchantService.all_merchants
      merchants.map do |merchant|
        Merchant.new(merchant)
      end
    end
  end
end
