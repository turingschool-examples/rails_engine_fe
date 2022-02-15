class ItemsFacade
  attr_reader :service

  def initialize
    @service = start_service
  end

  def get_item(id)
    item = Item.new(service.item(id))
  end

  def start_service
    @service = EngineService.new
  end
end
