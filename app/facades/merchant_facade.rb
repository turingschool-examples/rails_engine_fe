class MerchantFacade

  def self.all_merchants
    merchants = MerchantService.get_all_merchants
    merchants[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end
  
end
