class MerchantService

  def self.merchant_list
    response = conn.get("/api/v1/merchants")
    parse(response)
  end

  def self.merchant_by_id(search_id)
    response = conn.get("/api/v1/merchants/#{search_id}")
    parse(response)
  end

  def self.conn
      Faraday.new("http://localhost:3000")
    end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
