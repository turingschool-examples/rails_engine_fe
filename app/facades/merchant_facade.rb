class MerchantFacade

  def self.merchants
    merchants = MerchantService.all_merchants[:data]
    merchants.map do |merchant|
      Merchant.new({id: merchant[:id], name: merchant[:attributes][:name]})
    end
  end

  def self.merchant(merchant_id)
    found_merchant = MerchantService.one_merchant(merchant_id)[:data]
    Merchant.new({id: found_merchant[:id], name: found_merchant[:attributes][:name]})
  end
end
