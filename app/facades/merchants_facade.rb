class MerchantsFacade
  def initialize(id = nil)
    @id = id
  end

  def service
    EngineService.new
  end

  def merchants
    service.all_merchants.map {|merchant| Merchant.new(merchant)}
  end

  def merchant
    Merchant.new(service.merchant(@id))
  end

  def items
    service.merchant_items(@id).map {|item| Item.new(item)}
  end
end