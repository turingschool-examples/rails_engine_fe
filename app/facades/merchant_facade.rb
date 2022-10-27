require 'json'
require './app/services/merchant_service'

class MerchantFacade

  def self.find_merchant(merchant_id)
    parsed_data = MerchantService.request_one_merchant(merchant_id)
    merchant_data = parsed_data[:data]
    Merchant.new(merchant_data)
  end

  def self.find_merchants
    parsed_data = MerchantService.request_all_merchants
    merchants = parsed_data[:data]
    merchants.map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def self.find_merchant_items(merchant_id)
    parsed_data = ItemService.request_all_merchant_items(merchant_id)
    item_data = parsed_data[:data]
    item_data.map do |item_data|
      Item.new(item_data)
    end
  end
end