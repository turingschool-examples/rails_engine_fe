class ItemFacade


  def self.one_item(id)

    json = ItemService.one_item(id)
    json_data = json[:data]
    name = json_data[:attributes]

  end
end
