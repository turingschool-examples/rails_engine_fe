require './app/services/merchant_service'
require './app/poros/merchant'
class MerchantFacade
    def self.all_merchants
        merchants_data = MerchantService.get_all_merchants_data
        merchants_parsed = JSON.parse(merchants_data.body, symbolize_names: true)[:data]
        @merchants = merchants_parsed.map do |data|
            Merchant.new(data)
        end
    end
end

