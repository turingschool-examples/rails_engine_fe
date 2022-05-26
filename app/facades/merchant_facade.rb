class MerchantFacade
  def self.all_merchants
    merchants_data = MerchantService.get_all_merchants

    merchants_data[:data].map { |data| Merchant.new(data) }
  end
end
