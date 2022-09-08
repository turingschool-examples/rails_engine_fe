# frozen_string_literal: true

class MerchantFacade
  def self.list_merchants
    merchants = MerchantService.get_merchant_list
    merchants.map do |data|
      Merchant.new(data)
    end
  end
end