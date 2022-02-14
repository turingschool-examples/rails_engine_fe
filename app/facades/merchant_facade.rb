class MerchantFacade 
  class << self 
    def all_merchants
      merchants_data = MerchantService.merchants[:data]

      merchants_data.map do |data|
        Merchant.new(data)
      end
    end

    def merchant(id)
      merchant_data = MerchantService.merchant(id)[:data]

      Merchant.new(merchant_data)
    end

    def merch_items(id)
      items_data = MerchantService.merchant_items(id)[:data]

      items_data.map do |data|
        Item.new(data)
      end
    end
  end
end