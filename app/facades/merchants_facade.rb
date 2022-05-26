class MerchantsFacade

  def self.all_merchants
    json = RailsEngineService.json('merchants')
    data = json[:data]
    list = data.map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def self.merchant(merchant_id)
    json = RailsEngineService.json("merchants/#{merchant_id}")
    data = json[:data]
    Merchant.new(data)
  end

  def self.merchant_items(merchant_id)
    json = RailsEngineService.json("merchants/#{merchant_id}/items")
    data = json[:data]
    list = data.map do |item_data|
      Item.new(item_data)
    end
  end
end
