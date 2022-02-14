class RailsEngineFacade

  def self.merchant_list
    RailsEngineService.all_merchants[:data].map do |data|
      Merchant.new(data)
    end
  end

  def self.one_merchant(merchant_id)
    Merchant.new(RailsEngineService.a_merchant(merchant_id)[:data])
  end

  def self.merchant_item_list(merchant_id)
    RailsEngineService.merchant_items(merchant_id)[:data].map do |data|
      Item.new(data)
    end
  end

  def self.one_item(item_id)
    Item.new(RailsEngineService.an_item(item_id)[:data])
  end

end
