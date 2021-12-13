require './app/poros/item'

class ItemFacade
  def self.items_index
    @items_data = RailsEngineService.items_index
    @items = @items_data[:data].map do |item|
      Item.new(item)
    end
  end

  def self.item_show(id)
    @item_data = RailsEngineService.item_show(id)
    Item.new(@item_data[:data])
  end
end