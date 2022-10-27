class ItemFacade
  def self.items
    items_json = EngineService.items
    items_json[:data].map do |item|
      Item.new(item)
    end
  end

  def self.item(id)
    item = EngineService.item(id)
    Item.new(item[:data])
  end
end
