class ItemsService 

  def self.get_all_items
    parse_data(conn.get("/api/v1/items"))
  end

  def self.get_item(item_id)
    parse_data(conn.get("/api/v1/items/#{item_id}"))
  end

  def self.parse_data(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn 
    Faraday.new(url: 'http://localhost:3000')
  end
end