class MerchantItemsFacade
  def self.all_items(merchant)
    data = MerchantItemsService.merchant_items(merchant)
    items = data[:data].map do |item|
      Item.new(item)
    end
  end
end