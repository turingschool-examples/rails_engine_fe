class MerchantsFacade
  def self.merchants
    merchants_hash = MerchantsService.merchants[:data]
    merchants_hash.map { |merchant_info| Merchant.new(merchant_info)}
  end

  def self.merchant(id)
    merchant_hash = MerchantsService.merchant(id)[:data]
    Merchant.new(merchant_hash, merchant_items(id))
  end

  def self.find(query)
    merchant_hash = MerchantsService.find(query)[:data]
    id = merchant_hash[:id]
    Merchant.new(merchant_hash, merchant_items(id))
  end

  private

  def self.merchant_items(merchant_id)
    item_hash = MerchantsService.merchant_items(merchant_id)[:data]
    item_hash.map { |item_info| Item.new(item_info) }
  end
end