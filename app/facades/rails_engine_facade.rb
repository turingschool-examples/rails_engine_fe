# require './app/poros/merchants.rb'

class RailsEngineFacade
  def self.merchants
    RailsEngineService.merchants[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end
end
