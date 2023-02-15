class MerchantFacade
  def self.all_merchants
    response = RailsEngineService.get_all_merchants
    merchants = response[:data]
    
    merchants.map do |data|
      Merchant.new(data)
    end
  end
end