class MerchantFacade

 def self.merchants_details
  merchants = MerchantService.all_merchants
  merchants[:data].map do |data|
    Merchant.new(data)
  end
 end

 def self.merchant_details(id)
   data = MerchantService.one_merchant(id)
     Merchant.new(data)
 end
end