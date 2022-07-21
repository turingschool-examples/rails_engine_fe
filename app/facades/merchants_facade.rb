class MerchantsFacade

  def self.merchants
    merchants = MerchantsServices.merchants

    merchants.map do |merchant|
      Merchant.new(merchant)
    end
  end
  
  def self.merchant(id)
    merchant = MerchantsServices.merchant(id)
    Merchant.new(merchant)
  end

  def self.merchant_items(id)
    merchant_items = MerchantsServices.merchant_items(id)
    merchant_items.map do |item|
      Item.new(item)
    end
  end

end

