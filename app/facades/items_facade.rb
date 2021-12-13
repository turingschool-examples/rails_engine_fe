class ItemsFacade
  class << self
    def all_items
      data = ItemsService.get_data('items')[:data]

      data.map do |result|
        Item.new(result)
      end
    end

    def item_by_id(id)
      data = ItemsService.get_data("items/#{id}")
      Item.new(data)
    end
  end
end
