class ItemService 

  def self.connection 
    Faraday.new(url: "http://localhost:3000/api/v1/")
  end

  def self.items 
    response = connection.get('items')

    JSON.parse(response.body, symbolize_names: true)
  end

  def self.item(id)
    response = connection.get("items/#{id}")

    JSON.parse(response.body, symbolize_names: true)
  end

end
