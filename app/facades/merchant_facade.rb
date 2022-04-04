class MerchantFacade
  class << self
    def merchant_find(merchant_id)
      merchant = MerchantService.one_merchant(merchant_id)
      #binding.pry
      result = MerchantPoro.new(id: merchant[:id], name: merchant[:data][:attributes][:name])
    end

    def get_merchants
      #binding.pry
      merchants = MerchantService.all_merchants
      merchant_maker(merchants)
    end

    def merch_items(merchant_id)
      items = MerchantService.merchants_items(merchant_id)
      items_maker(items)
    end

    private
    def merchant_maker(data)
      data[:data].map do |merchant|
        #binding.pry
        MerchantPoro.new(id: merchant[:id], name: merchant[:attributes][:name])
      end
    end

    def items_maker(data)
      #binding.pry
      data[:data].map do |item|
        #binding.pry
        ItemPoro.new(id: item[:id], name: item[:attributes][:name], description: item[:attributes][:description], unit_price: item[:attributes][:unit_price] )
      end
    end

  end
end
