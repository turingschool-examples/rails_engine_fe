# require './app/poros/merchants.rb'

class RailsEngineFacade
  def self.merchants
    RailsEngineService.merchants[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def self.merchant(merchant_id)
    merchant_data = RailsEngineService.merchant(merchant_id)[:data]
    Merchant.new(merchant_data)
  end

  def self.merchant_items(merchant_id)
    RailsEngineService.merchant_items(merchant_id)[:data].map do |item_data|
      Item.new(item_data)
    end
  end
end
