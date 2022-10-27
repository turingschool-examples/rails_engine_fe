class ItemService
  def self.get_one_item(item_id)
    response = conn.get("/api/v1/items/#{item_id}")
    parse(response.body)
  end

  private 

  def self.conn
    Faraday.new('http://localhost:3000')
  end

  def self.parse(response)
    JSON.parse(response, symbolize_names: true)
  end
end