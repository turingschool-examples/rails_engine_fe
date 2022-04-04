class MerchantFacade
  def self.all_merchants
    merchants_data = MerchantService.get_all_merchants
    merchants_data[:data].map do |merchant|
      Merchant.new(merchant)
    end
  end
end
