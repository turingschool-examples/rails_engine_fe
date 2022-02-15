class ItemFacade

  def self.items 
    json = ItemService.items[:data]

    @items = json.map do |item|
      Item.new(id: item[:id], name: item[:name], description: item[:description], unit_price: item[:unit_price], merchant_id: item[:merchant_id])
    end
  end

  def self.item(id)
    json = ItemService.item(id)[:data]
    
    @item = Item.new(id: json[:id], name: json[:attributes][:name], description: json[:attributes][:description], unit_price: json[:attributes][:unit_price], merchant_id: json[:attributes][:merchant_id])
  end

end
