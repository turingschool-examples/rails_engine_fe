require './app/services/merchant_service'
require './app/poros/merchant'
class MerchantFacade
    def self.all_merchants
        MerchantService.get_all_merchants_data.map do |data|
            Merchant.new(data)
        end
    end

    def self.merchant(id)
        Merchant.new(MerchantService.get_merchant_data(id))
    end

    def self.merchant_items(id)
        MerchantService.get_merchant_items(id).map do |data|
            Item.new(data)
        end
    end

end

