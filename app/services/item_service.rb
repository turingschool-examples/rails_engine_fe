class ItemService
   def self.conn
    Faraday.new(url: 'http://localhost:3000/api/v1') do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end

  def self.all_items
    response = conn.get('items')
    json = JSON.parse(response.body, symbolize_names: true)
  end

  def self.item_info(id)
    response = conn.get("items/#{id}")
    json = JSON.parse(response.body, symbolize_names: true)
  end
end