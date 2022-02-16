class ItemService < FaradayService

  def self.get_item(id)
    get_url("/api/v1/items/#{id}")
  end
end
