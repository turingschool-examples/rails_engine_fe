class MerchantFacade
  def self.all_merchants
    merchants_array = (MerchantService.all_merchants)[:data]
    merchants_array.map do |merchant|
      Merchant.new(merchant)
    end
  end
end
