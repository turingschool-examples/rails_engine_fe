class MerchantFacade
  def self.merchants_all
    merchant_data = MerchantService.merchant_list
    merchant_data[:data].map do |merchant|
      Merchant.new(merchant)
    end
  end

  def self.find_merchant(search_id)
    merchant_data = MerchantService.merchant_by_id(search_id)
    data = merchant_data[:data]
    Merchant.new(data)
  end

end
