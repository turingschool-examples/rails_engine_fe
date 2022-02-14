class ItemService
  def self.conn
    conn = Faraday.new(url: "http://localhost:3000")
  end

  def self.all_items(merchant_id)
    response = conn.get("/api/v1/merchants/#{merchant_id}/items")

    json = JSON.parse(response.body, symbolize_names: true)
  end
end
