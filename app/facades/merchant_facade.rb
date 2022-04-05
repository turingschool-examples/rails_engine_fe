class MerchantFacade
  def self.all_merchants
    merchants = MerchantService.get_index
    merchants[:data].map do |merchant|
      MerchantObject.new(merchant)
    end
  end

  def self.get_merchant(id)
    merchant = MerchantService.get_show(id)
    MerchantObject.new(merchant[:data])
  end
end
