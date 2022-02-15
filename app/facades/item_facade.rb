class ItemFacade

  def self.items 
    json = ItemService.items[:data]
    # binding.pry
    @items = json.map do |item|
      Item.new(id: item[:id], name: item[:attributes][:name], description: item[:attributes][:description], unit_price: item[:attributes][:unit_price], merchant_id: item[:attributes][:merchant_id])
    end
  end

  def self.item(id)
    json = ItemService.item(id)[:data]
    
    @item = Item.new(id: json[:id], name: json[:attributes][:name], description: json[:attributes][:description], unit_price: json[:attributes][:unit_price], merchant_id: json[:attributes][:merchant_id])
  end

end
