class MerchantFacade 
  class << self
    def get_merchants
      MerchantService.get_all_merchants[:data].map do |merchant|
        Merchant.new(merchant)
      end 
    end 

    def get_merchant_items(merchant_id)
      merchant = MerchantService.get_merchant_name(merchant_id)[:data]
      MerchantService.get_merchant_items(merchant_id)[:data].map do |item|
        MerchantItem.new(merchant, item)
      end 
    end
  end 
end 