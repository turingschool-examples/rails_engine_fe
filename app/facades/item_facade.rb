class ItemFacade
  def self.service
    service ||= ItemService.new
  end

  def self.all_items
    item_data = service.get_all_items
    items = item_data[:data].map do |item|
      Item.new(item)
    end
  end

  def self.find_item(id)
    all_items.find do |item|
      item.id == id.to_i
    end 
  end
end
