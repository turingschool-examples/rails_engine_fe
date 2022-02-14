class RailsEngineFacade

  def self.merchant_list
    RailsEngineService.all_merchants[:data].map do |data|
      Merchant.new(data)
    end
  end
end 
