class ItemsFacade
  class << self

    def get_all_items
      items = ItemService.all_items
      items.each do |item|
        Item.new(item)
      end
    end
  end
end
