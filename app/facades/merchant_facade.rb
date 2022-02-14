class MerchantFacade
  def self.all_merchants
    json = MerchantService.all_merchants

    json.map do |merchant|
      Merchant.new(merchant)
    end
  end
end
