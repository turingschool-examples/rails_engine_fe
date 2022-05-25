class RailsEngineFacade
  def self.merchants
    RailsEngineService.merchants[:data].map do |data|
      Merchant.new(data)
    end
  end

  def self.find_merchant(id)
    data = RailsEngineService.find_merchant(id)[:data]
    Merchant.new(data)
  end

  def self.items_for(merchant_id)
    all_data = RailsEngineService.items_for(merchant_id)[:data]
    all_data.map do |data|
      Item.new(data)
    end
  end
end
