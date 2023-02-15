class MerchantFacade
  def self.merchant_data
    merchants_response = MerchantService.get_merchants
    merchants = merchants_response[:data].map do |merchant|
      Merchant.new(merchant)
    end
  end
end