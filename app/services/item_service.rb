class ItemService
  def self.get_item(id)
    get_url("/api/v1/items/#{id}")
  end

  def self.get_items
    get_url('/api/v1/items')
  end

  def self.get_url(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end
  
  def self.conn
    Faraday.new('http://localhost:3000')
  end
end