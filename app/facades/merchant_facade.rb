require './app/poros/merchant'
require './app/poros/item'

class MerchantFacade

    def self.merchants_info
        MerchantService.get_merchants[:data].map do |merchant|
            MerchantPoro.new(merchant)
        end 
    end 

    def self.merchant_info(id)
        MerchantPoro.new(MerchantService.get_merchant(id)[:data])
    end

    def self.get_items(id)
        MerchantService.get_items(id)[:data].map do |item|
            ItemPoro.new(item[:attributes])
        end 
    end 

end