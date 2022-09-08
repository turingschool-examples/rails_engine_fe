class MerchantFacade 
  def self.create_all_merchants
    merchants = MerchantService.get_all_merchants
    merchants.map do |merchant|
      Merchant.new(merchants)
    end
  end
end