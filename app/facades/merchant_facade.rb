class MerchantFacade
    def self.all_merchants 
        MerchantService.all_merchants.map { |data| Merchant.new(data) } 
    end

    def self.merchant_details(id)
        Merchant.new(MerchantService.merchant_details(id))
    end
end