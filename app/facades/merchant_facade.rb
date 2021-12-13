require './app/poros/merchant'
require './app/poros/item'

class MerchantFacade
  def self.merchants_index
    @merchants_data = RailsEngineService.merchants_index
    @merchants = @merchants_data[:data].map do |merchant|
      Merchant.new(merchant)
    end
  end

  def self.merchant_show(id)
    @merchant_data = RailsEngineService.merchant_show(id)
    Merchant.new(@merchant_data[:data])
  end

  def self.merchants_items(id)
    @item_data = RailsEngineService.merchants_items(id)
    @item_data[:data].map do |item|
      Item.new(item)
    end
  end
end