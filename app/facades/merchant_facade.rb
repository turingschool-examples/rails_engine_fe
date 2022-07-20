class MerchantFacade
    def self.all_merchants 
        MerchantService.all_merchants.map { |data| Merchant.new(data) } 
    end
end