class MerchantFacade
  def self.service
    @service ||= MerchantService.new
  end

  def self.all_merchants
    merchant_data = service.get_all_merchants
    merchants = merchant_data[:data].map { |merchant| Merchant.new(merchant) }
  end

  def self.all_merchant_items(merchant_id)
    merchant_items = service.get_merchant_items(merchant_id)
    merchant_items[:data].map { |item| MerchantItem.new(item) }
  end

  def self.find_merchant(id)
    all_merchants.find do |merchant|
      merchant.id == id.to_i
    end
  end

  def self.search_merchants(keyword)
    found_merchant = service.find_merchant(keyword)
  end
end
