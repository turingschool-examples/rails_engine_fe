class MerchantFacade
  def self.merchants
    json_data = MerchantService.all_merchants
    merchants = json_data[:data].map do |merchant|
      Merchant.new(merchant)
    end
  end
end
