class MerchantFacade

  def self.merchant_names
    merchants = MerchantService.merchants
    # require "pry"; binding.pry
    merchants[:data].map do |merchant|
      Merchant.new(merchant)
    end
  end

  def self.find_merchant(id)
    MerchantService.find_by_id(id)
  end

  def self.merchant_items(id)
    items = MerchantService.merchant_items(id)
    items.map do |item|
      Item.new(item)
    end
  end
end
