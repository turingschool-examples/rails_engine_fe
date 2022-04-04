class MerchantsFacade
  class << self

    def merchant(merchant_id)
      merchant = MerchantService.one_merchant(merchant_id)
      result = MerchantPoro.new(merchant)
    end

    def get_merchants
      merchants = MerchantService.all_merchants
      merchant_maker(merchants)
    end

    def merch_items(merchant_id)
      items = MerchantService.merchants_items(merchant_id)
      items_maker(items)
    end

    private
    def merchant_maker(data)
      data[:results].map do |merchant|
        MerchantPoro.new(id: merchant[:id], name: merchant[:data][:attributes][:name])
      end
    end

    def items_maker(data)
      data[:results].map do |item|
        MerchantPoro.new(id: item[:id], name: item[:data][:attributes][:name], description: item[:data][:attributes][:description], unit_price: item[:data][:attributes][:unit_price] )
      end
    end
  end
end
