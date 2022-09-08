class MerchantFacade

  def self.create_merchants
    merchant_data = MerchantService.get_merchants
    merchant_data[0..19].map do |merchant|
      Merchant.new(merchant_data)
    end
  end

  def self.create_merchant(merchant_id)
    response = MerchantService.get_merchant(merchant_id)
    Merchant.new(response)
  end
end 