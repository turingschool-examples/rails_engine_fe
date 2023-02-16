class ItemFacade
  def self.all_items
    response = RailsEngineService.get_all_items
    items = response[:data]
    
    items.map do |data|
      Item.new(data)
    end
  end

  def self.one_item(item_id)
    response = RailsEngineService.get_one_item(item_id)
    Item.new(response[:data])
  end
end