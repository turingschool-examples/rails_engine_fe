# frozen_string_literal: true

class MerchantFacade
  def self.list_merchants
    merchants = MerchantService.get_merchant_list
    merchants.map do |data|
      Merchant.new(data)
    end
  end

  def self.show_merchant(id)
    merchant = MerchantService.get_merchant(id)
    Merchant.new(merchant)
  end

  def self.show_merchant_items(id)
    merchant_items = MerchantService.get_merchant_items(id)

    merchant_items.map do |data|
      Item.new(data)
    end
  end
end