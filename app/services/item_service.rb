class ItemService < BaseService

  def self.find_merchant_items(id)
    json = conn.get("/api/v1/merchants/#{id}/items")
    parse_json(json) 
  end

  def self.find_item(id)
    json = conn.get("api/v1/items/#{id}")
    parse_json(json)
  end
end 