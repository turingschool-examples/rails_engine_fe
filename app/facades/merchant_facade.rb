class MerchantFacade

  def self.merchant_list
    json = MerchantService.merchant_results
    json[:data].map do |result|
      Merchant.new(result)
    end
  end
end