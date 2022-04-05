# require './app/poros/merchant'

class MerchantFacade
  def self.all_merchants
    merchants = MerchantService.get_all_merchants
    merchants[:data].map do |data|
      Merchant.new(data)
    end
  end

  def self.find_merchant(merchant_id)
    data = MerchantService.find_a_merchant(merchant_id)
    merchant = Merchant.new(data[:data])
  end
end