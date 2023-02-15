class MerchantFacade
  def self.all_merchants_data
    merchants_response = MerchantService.get_all_merchants
    merchants = merchants_response[:data].map do |merchant|
      Merchant.new(merchant)
    end
  end
  
  def self.merchant_data(id)
    merchant_response = MerchantService.get_merchant(id)[:data]
    merchant = Merchant.new(merchant_response) 
  end
end