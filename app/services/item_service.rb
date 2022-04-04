class ItemService 

  def self.get_url(url, param = nil)
    conn = Faraday.new(url: "http://localhost:3000/") do |faraday|
      faraday.params[:query] = param unless param == nil
    end 

  response = conn.get(url)
  JSON.parse(response.body, symbolize_names: true)
  end

  def self.one_item(item_id)
    get_url("api/v1/items/#{item_id}")[:data]
  end 

  def self.all_items
    get_url("api/v1/items")[:data]
  end 
end