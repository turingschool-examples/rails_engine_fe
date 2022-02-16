class MerchantFacade
  def self.merchants_info
    json = MerchantService.merchants_info

    json[:data].map do |merchant_info|
      Merchant.new(merchant_info)
    end
  end

  def self.merchant_items(id)
    json = MerchantService.merchant_items(id)

      json[:data].map do |merchant_item|

        Item.new(merchant_item)
      end
    end

    def self.one_merchant(id)
      json = MerchantService.one_merchant(id)
      merchant = json[:data]
      name = merchant[:attributes][:name]

    end

    def self.merchant_search(search)
    merchant_data = MerchantService.merchants_info
      # merchants = merchant_data[:data][0][:attributes]
      found_merchants = merchant_data[:data].find_all { |m| m[:attributes][:name] == search  }

      return nil unless found_merchants.present?

      found_merchants.each do |merch|
        Merchant.new(merch)
      end

  end
end
