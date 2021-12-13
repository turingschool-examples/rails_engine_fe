class ItemFacade

  def self.items
    items = ItemService.all_items[:data]
    items.map do |item|
      Item.new({
        id: item[:id],
        name: item[:attributes][:name],
        description: item[:attributes][:description],
        unit_price: item[:attributes][:unit_price],
        merchant_id: item[:attributes][:merchant_id]
        })
    end
  end

  def self.item(item_id)
    item = ItemService.item(item_id)[:data]
    Item.new({id: item[:id], attributes: item[:attributes]})
  end
end
