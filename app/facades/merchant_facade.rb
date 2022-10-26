class MerchantFacade
  def self.merchants_all
    merchant_data = MerchantService.merchant_list
    merchant_data[:data].map do |merchant|
      Merchant.new(merchant)
    end
  end
end
