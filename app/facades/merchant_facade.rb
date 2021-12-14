class MerchantFacade

  def self.merchants
    merchants = MerchantService.all_merchants[:data]
    merchants.map do |merchant|
      Merchant.new(merchant)
    end
  end

  def self.merchant(id)
    merchant = MerchantService.singular_merchant(id)[:data]
    Merchant.new(merchant)
  end

  def self.items(id)
    items = ItemService.all_items(id)[:data]
    items.map do |item|
      Item.new(item)
    end
  end
end