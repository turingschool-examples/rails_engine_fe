class MerchantFacade
  class << self
    def all_merchants
      response = MerchantService.find_all_merchants
      response[:data].map do |data|
        Merchant.new(data)
      end
    end
  end
end
