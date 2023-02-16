class ItemFacade
  def self.all_items
    response = RailsEngineService.get_all_items
    items = response[:data]
    
    items.map do |data|
      Item.new(data)
    end
  end
end