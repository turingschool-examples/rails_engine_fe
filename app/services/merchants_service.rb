class MerchantsService
  
  def self.get_all_merchants
    parse_data(conn.get("/api/v1/merchants"))
  end

  def self.get_merchant_items(merchant_id)
    parse_data(conn.get("/api/v1/merchants/#{merchant_id}/items"))
  end

  def self.parse_data(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn 
    Faraday.new(url: 'http://localhost:3000')
  end
end