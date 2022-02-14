class ItemFacade

  def self.all_items
    all_items = items_data[:data].map do |data|
      ItemPoro.new(data)
    end
  end

  def self.find_items(merchant_id)
    items = all_items.select do |i|
      i.merchant_id.to_s == merchant_id
    end
  end

  def self.find_item(item_id)
    all_items.find do |i|
      i.id == item_id
    end
  end

  def self.service
    @_service ||= ItemService.new
  end

  def self.items_data
    service.get_all_items
  end

end
