# frozen_string_literal: true

class EngineFacade
  def self.create_merchants
    merchants = EngineService.merchants
    merchants.map do |merchant_data|
      MerchantObject.new(merchant_data)
    end
  end

  def self.create_merchant(id)
    merchant_data = EngineService.merchant(id)
    MerchantObject.new(merchant_data)
  end
end
