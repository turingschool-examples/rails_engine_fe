class MerchantsFacade
  class << self

    def find_all
      merchants_data = MerchantsService.call_api("/api/v1/merchants")
      merchants_data[:data].map do |merchant_data|
        Merchant.new(merchant_data)
      end
    end

    def find_one(id)
      merchants_data = MerchantsService.call_api("/api/v1/merchants")
      merchant_data = merchants_data[:data].find do |merchant_data|
        merchant_data[:id] = id
      end
      Merchant.new(merchant_data)
    end

  end
end
