class MerchantsFacade
  def initialize
  end

  def merchants
    service.merchants.map do |data|
      Merchant.new(data)
    end
  end

  def service 
    EstyShopService.new
  end
end