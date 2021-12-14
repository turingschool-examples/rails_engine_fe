class ItemsFacade
  class << self
    def all_items
      items = ItemService.get_data('')

      items[:data].map do |item|
        Item.new(item)
      end
    end

    def item_by_id(id)
      item = ItemService.get_data("#{id}")

      Item.new(item[:data])
    end
  end
end
