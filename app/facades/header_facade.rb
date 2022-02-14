class HeaderFacade
  def merchants
    service.merchants[:data].map {|merchant| Merchants.new(merchant)}
  end

  def one_merchant(id)
    OneMerchant.new(service.one_merchant(id)[:data])
  end

  def merchant_items(id)
    service.merchant_items(id)[:data].map {|item| MerchantItems.new(item)}
  end

  def service
    RailsEngineService.new
  end
end
