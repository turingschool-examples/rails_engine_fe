class MerchantFacade

  def all_merchants
    service.find_all_merchants[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def service
    MerchantService.new
  end
end
