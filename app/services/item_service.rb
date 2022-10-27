require 'faraday'
require 'json'

class ItemService

 def self.conn
   Faraday.new(url: 'http://localhost:3000/')
 end

 def self.all_items(id)
   response = conn.get("api/v1/merchants/#{id}/items")
   body = JSON.parse(response.body, symbolize_names: true)[:data]
 end
end