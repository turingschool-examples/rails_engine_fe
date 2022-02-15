class MerchantFacade 

  def self.merchants
    json = MerchantService.merchants[:data]
    @merchants = json.map do |merchant|
      Merchant.new(id: merchant[:id], name: merchant[:attributes][:name])
    end
  end

  def self.merchant(id)
    json = MerchantService.merchant(id)[:data]
    
    @merchant = Merchant.new(id: json[:id], name: json[:attributes][:name])
  end
  
  def self.items(merchant_id) 
    json = MerchantService.merchants_items(merchant_id)[:data]

    @items = json.map do |item|
      Item.new(id: item[:id], name: item[:name], description: item[:description], unit_price: item[:unit_price], merchant_id: item[:merchant_id])
    end
  end
end
