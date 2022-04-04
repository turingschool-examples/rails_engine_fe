class MerchantFacade 
  class << self 
    def get_all_merchants 
      merchants = MerchantService.call_for_merchants
      merchants_name(merchants)
    end 

    def merchants_name(merchants) 
      merchants["data"].map do |merchant| 
        Merchant.new(id: merchant["id"].to_i, name: merchant["attributes"]["name"])
      end 
    end 
  end 
end 