class ItemsFacade
  class << self

    def find_all
      path = "/api/v1/items"
      items_data = ItemsService.call_api(path)

      items_data[:data].map do |item_data|
        Item.new(item_data)
      end
    end

    def find_one(id)
      path = "/api/v1/items/#{id}"
      item_data = ItemsService.call_api(path)

      Item.new(item_data[:data])
    end

  end
end
