# frozen_string_literal: true

class ItemService
  def self.get_item_merch(item_id)
    response = conn.get("items/#{item_id}/merchant")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_item(item_id)
    response = conn.get("items/#{item_id}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_items
    response = conn.get('items')
    JSON.parse(response.body, symbolize_names: true)
  end
  
  def self.conn
    url = 'http://localhost:3000/api/v1/'
    Faraday.new(url: url)
  end
end
