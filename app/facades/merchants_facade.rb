class MerchantsFacade
  class << self
    def all_merchants
      data = MerchantsService.get_data('merchants')[:data]

      data.map do |result|
        Merchant.new(result)
      end
    end

    def merchant_by_id(id)
      data = MerchantsService.get_data("merchants/#{id}")[:data]
      
      Merchant.new(data)
    end

    def merchant_items(id)
      data = MerchantsService.get_data("merchants/#{id}/items")[:data]

      data.map do |result|
        Item.new(result)
      end
    end
  end
end
