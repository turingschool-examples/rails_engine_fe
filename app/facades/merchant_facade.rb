require './app/poros/merchant'

class MerchantFacade

    def self.merchants_info
        MerchantService.get_merchants[:data].map do |merchant|
            MerchantPoro.new(merchant)
        end 
    end 

    def self.merchant_into(id)
        MerchantPoro.new(MerchantService.get_merchant(id)[:data])
    end

end