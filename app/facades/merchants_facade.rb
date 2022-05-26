require_relative '../services/backend.rb'
class MerchantsFacade

  def self.get_all_merchants
    merchants = Backend.merchants_index_endpoint
    formatted = merchants[:data].map { |merchant_attributes| Merchant.new(merchant_attributes) }
  end

  def self.get_merchants_items(id)
    items = Backend.merchant_items_endpoint(id)
    formatted = items[:data].map { |item_attributes| Item.new(item_attributes) }
  end

  def self.get_merchant(id)
    merchant = Backend.merchant_endpoint(id)
    formatted = Merchant.new(merchant[:data])
  end

end
