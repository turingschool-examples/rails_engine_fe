class ItemService 
    def self.merchant_items(id) 
        conn = Faraday.new(url: 'http://localhost:3000')

        response = conn.get("/api/v1/merchants/#{id}/items")

        data = JSON.parse(response.body, symbolize_names: true)
        data[:data]
    end
end