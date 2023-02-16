class MerchantFacade
  def self.all_merchants
    response = RailsEngineService.get_all_merchants
    merchants = response[:data]
    
    merchants.map do |data|
      Merchant.new(data)
    end
  end

  def self.one_merchant(merchant_id)
    response = RailsEngineService.get_one_merchant(merchant_id)
    Merchant.new(response[:data])
  end

  def self.one_merchants_items(merchant_id)
    response = RailsEngineService.get_one_merchants_items(merchant_id)
    items = response[:data]

    items.map do |data|
      Item.new(data)
    end
  end
end