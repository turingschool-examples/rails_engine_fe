class MerchantService
  def self.conn
    Faraday.new('http://localhost:3000/api/v1')
  end

  def self.merchants_index
    parsed_response('/merchants')
  end

  def self.parsed_response(uri)
    response = conn.get(uri)
    JSON.parse(response.body, symbolize_names: true)
  end
end
