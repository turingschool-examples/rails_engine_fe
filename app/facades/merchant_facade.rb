class MerchantFacade
  def self.all_merchants
    response = RailsEngineService.get_all_merchants
    merchants = response[:data]
    
    merchants.map do |data|
      Merchant.new(data)
    end
  end

  def self.one_merchant(merchant_id)
    response = RailsEngineService.get_one_merchant(merchant_id)
    Merchant.new(response[:data])
  end
end