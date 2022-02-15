class MerchantsFacade

  attr_reader :service

  def initialize
    @service = start_service
  end

  def merchants
    merchants = service.merchants.map do |data|
      Merchant.new(data)
    end
  end

  def get_merchant(id)
    merchant = Merchant.new(@service.merchant(id))
  end

  def get_merchant_items(id)
    items = @service.merchant_items(id).map do |data|
      Item.new(data)
    end
  end

  def find_merchant(search)
    merchant = Merchant.new(@service.find_merchant(search)[0])
  end

  def start_service
    @service = EngineService.new
  end

end
