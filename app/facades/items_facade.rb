class ItemsFacade 

  def self.all_items 
    data = ItemsService.get_all_items 
    results = data[:data]
    results.map do |item_data|
      Item.new(item_data)
    end
  end
end