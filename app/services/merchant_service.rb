class MerchantService
  def self.all_merchants
    content = conn.get("/api/v1/merchants")

    results = (parse_response(content.body))[:data]

    results
  end

  def self.merchant_details(id)
    content = conn.get("/api/v1/merchants/#{id}")

    results = (parse_response(content.body))[:data]

    results
  end

  def self.merchants_items(merchant_id)
    content = conn.get("/api/v1/merchants/#{merchant_id}/items")

    results = (parse_response(content.body))[:data]

    results
  end

  def self.find_all(name)
    content = conn.get("/api/v1/merchants/find_all?name=#{name}")

    results = (parse_response(content.body))[:data]

    results
  end

  def self.parse_response(response)
    JSON.parse(response, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: "http://localhost:3000")
  end
end
