class ItemsService
  def self.items
    conn = Faraday.new(url: 'http://localhost:3000/api/v1/items')
    response = conn.get
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.item(id)
    conn = Faraday.new(url: "http://localhost:3000/api/v1/items/#{id}")
    response = conn.get
    JSON.parse(response.body, symbolize_names: true)
  end
end