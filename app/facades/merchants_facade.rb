class MerchantsFacade
  def self.find(name)
    results = MerchantService.find_all(name)

    if results != nil
        results.map do |result|
          Merchant.new(result)
        end
    end
  end

  def self.all_merchants
    results = MerchantService.all_merchants
    results.map do |merchant|
      Merchant.new(merchant)
    end
  end

  def self.merchant_details(id)
    results = MerchantService.merchant_details(id)
    Merchant.new(results)
  end

  def self.merchants_items(id)
    results = MerchantService.merchants_items(id)
    results.map do |item|
      Item.new(item)
    end
  end

end
