class MerchantService

  def self.merchant_list
    response = conn.get("/api/v1/merchants")
    parse(response)
  end

  def self.merchant_by_id(search_id)
    response = conn.get("/api/v1/merchants/#{search_id}")
    parse(response)
  end

  def self.items_by_merchant(search_id)
    response = conn.get("/api/v1/merchants/#{search_id}/items")
    parse(response)
  end

  def self.items_list
    response = conn.get("/api/v1/items")
    parse(response)
  end

  def self.item_by_id(search_id)
    response = conn.get("/api/v1/items/#{search_id}")
    parse(response)
  end

  private

  def self.conn
      Faraday.new("http://localhost:3000")
    end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
