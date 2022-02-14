class ItemFacade
  def self.all_items
    json = ItemService.all_items
    json[:data].map do |item|
      Item.new(item)
    end
  end
end
