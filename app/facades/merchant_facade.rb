class MerchantFacade
  def self.all_merchants
    json = MerchantService.get_merchants
    json[:data].map do |data|
      Merchant.new(data)
    end
  end

  def self.a_merchant(merchant_id)
    json = MerchantService.get_merchant
    data = json[:data]
    Merchant.new(data)
  end

end
