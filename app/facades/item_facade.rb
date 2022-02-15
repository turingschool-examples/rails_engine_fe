class ItemFacade

  # def self.one_item(id)
  #
  #   json = ItemService.one_item(id)
  #   json_data = json[:data]
  #   name = json_data[:attributes]
  # end

  def self.one_item(id)
    json = ItemService.one_item(id)[:data]
    Item.new(json)
  end
end
