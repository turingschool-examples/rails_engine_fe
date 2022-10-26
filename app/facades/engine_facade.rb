# frozen_string_literal: true

class EngineFacade
  def self.create_merchants
    merchants = EngineService.merchants
    merchants[:data].map do |merchant_data|
      MerchantObject.new(merchant_data)
    end
  end

  def self.create_merchant(id)
    merchant_data = EngineService.merchant(id)
    MerchantObject.new(merchant_data[:data])
  end

  def self.merchant_items(id)
    merchant_items = EngineService.merchant_items(id)
    merchant_items[:data].map do |item_data|
      ItemObject.new(item_data)
    end
  end

  def self.create_item(id)
    item_data = EngineService.item(id)
    ItemObject.new(item_data[:data])
  end

  def self.create_items
    items = EngineService.items
    items[:data].map do |item_data|
      ItemObject.new(item_data)
    end
  end
end
