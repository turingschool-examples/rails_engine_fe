class MerchantFacade 
  class << self
    def get_merchants
      MerchantService.get_all_merchants
    end 

    def get_merchant_name(merchant_id)
      MerchantService.get_merchant_name(merchant_id)
    end 

    def get_merchant_items(merchant_id)
      merch_items = MerchantService.get_merchant_items(merchant_id)
    end 
  end 
end 